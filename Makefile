all:hadoop_run_test0

hadoop_run_test0:local_run_test0
# Fill in how to run test0 on hadooop here.

local_run_test0:test0.bin
	./$<

test0.bin:test0.cpp
	clang++ $< -o $@

clean:
	rm *.bin
