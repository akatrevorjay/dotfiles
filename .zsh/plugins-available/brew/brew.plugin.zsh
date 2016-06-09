case "$SYSTEM" in
	linux)
		# linuxbrew (for git builds)
		function () {
			local brew_path="$HOME/.linuxbrew"
			[[ -d "$brew_path" ]] || return
			add-suffix-paths "$brew_path"

			# always compile from source, using distro libc
			export HOMEBREW_BUILD_FROM_SOURCE=1
		}
		;;
esac
