name 'my_cpp_program'
skip_transitive_dependency_licensing true # отключает транзитивную проверку лицензий
whitelist_file './main.cpp' 

source git: "https://github.com/lolomarka/my_cpp_program.git"
default_version '0.0.0.1'


build do
    command "qmake"
    command "make"
end
