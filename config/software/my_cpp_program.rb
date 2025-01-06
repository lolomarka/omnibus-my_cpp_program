name 'my_cpp_program'

source path: "/home/lolomarka/Documents/Omnibus-my/my_cpp_program"
default_version '1.0.0'

build do
    workers 14
    command "g++ main.cpp -o hello-world"
end
