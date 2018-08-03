#!/bin/zsh

: ${ROS_ROOT:=/opt/ros}

[[ -e $ROS_ROOT ]] || return

ros-rel-latest() {
	local root=${ROS_ROOT:-/opt/ros}

	# This will work until they rollover to `a`; and we have quite a while before that happens.
	# You're welcome future self.
	local release=($root/*(-/NOnY1))

	[[ -n $release ]] && [[ -e $release/setup.zsh ]] || return 1

	echo $release
}

ros-use-latest() {
	local release=$(ros-rel-latest)
	local setup=$release/setup.zsh
	[[ -e $setup ]] || return
	source $setup
}

