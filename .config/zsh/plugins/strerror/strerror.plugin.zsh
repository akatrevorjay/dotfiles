function strerror() {
	local code=${1:-$?}
	[[ $code -ne 0 ]] || return $code

	local -U errnoh
	errnoh=(/usr/include{,/sys,/**}/errno.h(.-N))

	if [[ ${#errnoh} -eq 0 ]]; then
		echo "[strerror] Cannot find errno.h?" >&2
		return $code
	fi

	sed -ne"s|^#define[[:space:]]\(E[A-Z]*\)[[:space:]]*${code}[[:space:]].*/\* \(.*\) \*/|⤬ [${code}] \1: \2|p" $errnoh
}
