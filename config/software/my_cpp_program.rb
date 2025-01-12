name 'my_cpp_program'
skip_transitive_dependency_licensing true # отключает транзитивную проверку лицензий
whitelist_file './main.cpp' 

default_version '0.0.0.3'

version("0.0.0.2") { source sha1: "a4ca3836f68f59139ca40a70d734c273f81c0a6b" }
version("0.0.0.3") { source sha1: "367c66711b453c2c86e794a8a889316afb75c584" }
source git: "https://github.com/lolomarka/my_cpp_program.git"

build do
    if version <= "0.0.0.2"
        command "cmake ./CMakeLists.txt"
        command "make -j #{workers}"
    else
        command "g++ ./main.cpp -o hello-world-app"
    end
end
