build_dir := build

test : ${build_dir}/main
	$^

${build_dir}/main : ${build_dir}/CMakeCache.txt main.cpp
	cmake --build ${build_dir} --parallel $(shell nproc)

${build_dir}/CMakeCache.txt : CMakeLists.txt Makefile | ${build_dir}
	cmake -B ${build_dir} -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_CXX_FLAGS='-stdlib=libc++' .
	touch $@

${build_dir} :
	mkdir $@

clean :
	rm -rf ${build_dir}
