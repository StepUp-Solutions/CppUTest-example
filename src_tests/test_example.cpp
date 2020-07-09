#include <CppUTest/TestHarness.h>
#include <CppUTestExt/MockSupport.h>

extern "C"
{
	#include "template.h"
	#include "stdlib.h"
}

TEST_GROUP(FirstTestGroup)
{
	void setup ()
	{
	}

	void teardown ()
	{
	}
};

/*
 - Test scenario : check sum() function
 - Test case : works with 2 positive numbers
 - Preconditions : C std lib works
 - Test steps : Create 2 variables, call sum(), check the result
 - Test data : a=1, b=2
 - Expected result : return value = 3
*/
TEST(FirstTestGroup, FirstTest)
{
	CHECK_EQUAL(3, my_sum(1, 2));
};

TEST(FirstTestGroup, SecondTest)
{
	void* memoryleak = malloc(sizeof(int));
	CHECK(memoryleak != NULL);
	// This test should fail because of the memory leak
};
