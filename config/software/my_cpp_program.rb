name 'my_cpp_program'

source git: "https://github.com/lolomarka/my_cpp_program.git"
# default_version '1.0.0'

build do
    command "g++ main.cpp -o hello-world"
end
