#!/bin/bash

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

# This will be gone..
while getopts ":r:hv" opt; do
  case ${opt} in
    r )
      run_command="$OPTARG"
      ;;
    h )
      echo "Usage: script.sh [-r run] [-h help] [-v verbose]"
      exit 0
      ;;
    v )
      verbose=true
      ;;
    \? )
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

case "${1:-}" in
  	"version")
		echo "Version 1.0.0"
    ;;
  	*)
		echo "Unknown subcommand: $subcommand"
    ;;
esac
