name 'my_cpp_program'
skip_transitive_dependency_licensing true # отключает транзитивную проверку лицензий
whitelist_file './main.cpp' 

default_version '0.0.0.1'

version("0.0.0.1") { source sha1: "a4ca3836f68f59139ca40a70d734c273f81c0a6b" }

source git: "https://github.com/lolomarka/my_cpp_program.git"

build do
    command "qmake"
    command "make"
end
