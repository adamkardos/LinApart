#!/usr/bin/env bash
#
# Run the double-pentagon benchmark suite with (t)form -- no check.rb.
#
# Each entry_*.frm is self-checking: it substitutes large primes for all
# variables and verifies the round-trip inside FORM. On success it prints
# "ROUNDTRIP OK" and exits 0; on a mismatch it prints "ROUNDTRIP FAILED"
# and exits nonzero (#terminate). This script runs the files, captures a
# per-file log, and reports pass/fail.
#
# Usage:
#   ./run.sh                                    # all 12 files
#   ./run.sh entry_17_027_*.frm entry_03_089_*.frm   # a chosen subset
#   FORM=form THREADS=1 ./run.sh                # serial FORM, no workers
#
# Environment:
#   FORM      FORM executable           (default: tform)
#   THREADS   tform worker count -w<N>  (default: 16)
#
# The library headers formapart.h AND the declare-formapart.h it includes
# must both be on the FORM include path: copy both into this directory,
# or run with the path set up accordingly.
#
# Note: the heaviest entry, entry_14_075_*, is ~30 s per branch;
# entry_05_082_* ~8 s, entry_06_081_* ~4 s; the smoke cells finish in
# well under a second. The whole suite runs in ~1.5 min.
set -u
FORM=${FORM:-tform}
THREADS=${THREADS:-16}
args=()
[[ "$FORM" == tform* ]] && args+=(-w"$THREADS")

files=("$@")
[[ ${#files[@]} -eq 0 ]] && files=(entry_*.frm)

pass=0; fail=0
for f in "${files[@]}"; do
  printf '%-28s ... ' "$f"
  log="${f%.frm}.log"
  if "$FORM" "${args[@]}" "$f" >"$log" 2>&1 && grep -q 'ROUNDTRIP OK' "$log"; then
    echo "OK"; pass=$((pass + 1))
  else
    echo "FAILED  (see $log)"; fail=$((fail + 1))
  fi
done
echo "--------------------------------------------"
echo "passed=$pass  failed=$fail"
[[ $fail -eq 0 ]]
