#
# Copyright 2024 YOUR NAME
#
# All Rights Reserved.
#

name "my_cpp_program"
maintainer "lolomarka <lolomarka@gmail.com>"
homepage "https://github.com/lolomarka"

# Defaults to C:/my_cpp_program on Windows
# and /opt/my_cpp_program on all other platforms
install_dir "#{default_root}/#{name}"
# install_dir "/bin/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# my_cpp_program dependencies/components
dependency "my_cpp_program"

exclude "**/.git"
exclude "**/bundler/git"
