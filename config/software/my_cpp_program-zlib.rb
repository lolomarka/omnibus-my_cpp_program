#
# Copyright 2024 YOUR NAME
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# These options are required for all software definitions
name "my_cpp_program-zlib"
default_version "1.2.6"

# A software can specify more than one version that is available for install
version("1.2.6") { source md5: "618e944d7c7cd6521551e30b32322f4a" }
version("1.2.8") { source md5: "44d667c142d7cda120332623eab69f40" }

# Sources may be URLs, git locations, or path locations
source url: "http://downloads.sourceforge.net/project/libpng/zlib/#{version}/zlib-#{version}.tar.gz"

# This is the path, inside the tarball, where the source resides
relative_path "zlib-#{version}"

build do
  # Setup a default environment from Omnibus - you should use this Omnibus
  # helper everywhere. It will become the default in the future.
  env = with_standard_compiler_flags(with_embedded_path)

  # Manipulate any configure flags you wish:
  #   For some reason zlib needs this flag on solaris
  env["CFLAGS"] << " -DNO_VIZ" if solaris?

  # "command" is part of the build DSL. There are a number of handy options
  # available, such as "copy", "sync", "ruby", etc. For a complete list, please
  # consult the Omnibus gem documentation.
  #
  # "install_dir" is exposed and refers to the top-level projects +install_dir+
  command "./configure" \
          " --prefix=#{install_dir}/embedded", env: env

  # You can have multiple steps - they are executed in the order in which they
  # are read.
  #
  # "workers" is a DSL method that returns the most suitable number of
  # builders for the currently running system.
  command "make -j #{workers}", env: env
  command "make -j #{workers} install", env: env
end
