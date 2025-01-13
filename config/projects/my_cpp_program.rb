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

package :msi do
    upgrade_code 'e2adb6ea-3e41-4a6e-abd7-73be8aaff051'
    localization 'en-US'
end

build_version "0.0.0.3"
build_iteration 1

# Creates required build directories
dependency "preparation"

# my_cpp_program dependencies/components
dependency "my_cpp_program"

exclude "**/.git"
exclude "**/bundler/git"
