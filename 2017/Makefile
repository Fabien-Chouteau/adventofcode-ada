
all:
	gprbuild -j0 -P adventofcode.gpr

test::
	gprbuild -j0 -P test/test_driver.gpr
	./test/test_runner

.PHONY: all test
