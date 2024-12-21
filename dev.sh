#!/bin/bash

set -e

export OPTION="exec" PARAMETERS=()

while (( "${#}" > 0 ))
do
	case "${1,,}" in
		("exec")
			shift
			export OPTION="exec"
		;;
		(*)
			export PARAMETERS+=("${1}")
			shift
		;;
	esac
done

case "${OPTION,,}" in
	("exec")
		cargo run --config 'target."cfg(all())".runner="sudo -E"' -- "${PARAMETERS[@]}"
	;;
esac
