all: tests

tests:
	make -f MakeTests.mk V=${V} all
	
tests_coverage:
	make -f MakeTests.mk V=${V} coverage
	
clean:	
	make -f MakeTests.mk V=${V} clean
	make -f MakeTests.mk V=${V} coverage_clean
	@rm -rf lib objs
