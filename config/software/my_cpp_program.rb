name 'my_cpp_program'
skip_transitive_dependency_licensing true

source git: "https://github.com/lolomarka/my_cpp_program.git"
# default_version '1.0.0'

whitelist_file 'main.cpp'

build do
    command "g++ main.cpp -o hello-world"
end
