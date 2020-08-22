# CppUTest template

## Unit testing

Goal : test separately every feature

 - Test scenario (*check sum() function*)
 - Test case (*works with 2 positive numbers*)
 - Preconditions (*C std lib works*)
 - Test steps (*Create 2 variables, call sum(), check the result*)
 - Test data (*a=1, b=2*)
 - Expected result (*return value = 3*)
 
## Installing CppUTest from source code

Dependencies : *autoconf*, *automake*, *lcov*

```
sudo apt install autoconf automake lcov
```

```
./setup-cpputest.sh
```

If you want to force download of CppUTest, use ```./setup-cpputest.sh -reinstall```.

If you want to uninstall CppUTest, use ```./setup-cpputest.sh -uninstall```.

## CppUTest using MakefileWorker

After writing configuration in `MakeTests.mk`, run the following commands:

### Only run the tests
```
make tests
```
or
```
make all
```

### Generate coverage report
```
make tests_coverage
```
Generate coverage HTML files (source files must be in the working folder)


### Clean
```
make clean
```

## Using CppUTest without MakefileWorker

First install cpputest package:
```
sudo apt install cpputest
```

Then complete and run this C++ example (can de done in Eclipse):
```
#include <CppUTest/CommandLineTestRunner.h>
#include <CppUTest/TestHarness.h>

TEST_GROUP(Group) {};

TEST(Group, Test) {};

int main(int argc, char ** argv)
{
    RUN_ALL_TESTS(argc, argv);
}
```

## Useful ressources:

 - [Another example of unit test](https://github.com/flplv/UnitTestingEmbeddedC-Demo1)
 - [The source](https://github.com/cpputest/cpputest)
 - [The manual](https://cpputest.github.io/manual.html)
 - [CppUTest with Eclipse on Windows](https://github.com/miguelmoraperea/guide_setup_cpputest_eclipse_win_7)

## License

This repository is licensed under the [MIT License](https://tldrlegal.com/license/mit-license) - see the [LICENSE](LICENSE.md) file for details

## Acknowledgements

A huge thank you to Charles Gayot for letting me opensource this repository ! :heart:
