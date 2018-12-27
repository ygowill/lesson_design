#include "catch.hpp"
#include <iostream>
#include <random>
#include <sstream>

using namespace std;

#ifdef __cplusplus
extern "C" {
    #include "fpconv.h"
}
#endif

char                                chdtoa[20];
double                              double_input;
int int_input;
double                              result;
int                                 ret = 0;
uniform_real_distribution< double > unif(-10000000000.0, 10000000000.0);
random_device                       rand_dev;
mt19937                             rand_engine(rand_dev());

template < class Type >
Type stringToNum(const string& str) {
    istringstream iss(str);
    Type          num;
    iss >> num;
    return num;
}

TEST_CASE("dtoa double test", "[dtoa]") {
    for(int i=0;i<10000;i++) {
        double_input = unif(rand_engine);
        Approx target = Approx(double_input).margin(0.0000000001);
        ret = fpconv_dtoa(double_input, chdtoa);
        chdtoa[ret] = '\0';
        result = stringToNum<double>(chdtoa);
        REQUIRE(result == target);
    }
}

TEST_CASE("dtoa int test"){
    for(int i=0;i<10000;i++) {
        int_input = static_cast<int>(unif(rand_engine));
        ret = fpconv_dtoa(int_input, chdtoa);
        chdtoa[ret] = '\0';
        result = stringToNum<int>(chdtoa);
        REQUIRE(result == int_input);
    }
}
