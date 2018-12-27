#include "catch.hpp"
#include <sstream>

#ifdef __cplusplus
extern "C" {
    #include "calculator.h"
    #include "stack.h"
}
#endif

using namespace std;

char input[100];
char output[100];

template < class Type >
Type stringToNum(const string& str) {
    istringstream iss(str);
    Type          num;
    iss >> num;
    return num;
}

TEST_CASE("calculator simple test","[calc]"){
    SECTION("plus test"){
        strcpy(input,"1+2");
        calc(input,output);
        int res = strcmp(output,"3");
        REQUIRE(res == 0);
    }
    SECTION("minux test"){
        strcpy(input,"1-2");
        calc(input,output);
        int res = strcmp(output,"-1");
        REQUIRE(res == 0);
    }
    SECTION("multiple test"){
        strcpy(input,"2*3");
        calc(input,output);
        int res = strcmp(output,"6");
        REQUIRE(res == 0);
    }
    SECTION("devide test"){
        strcpy(input,"15/5");
        calc(input,output);
        int res = strcmp(output,"3");
        REQUIRE(res == 0);
    }

}

TEST_CASE("trig functions test","[calc]"){
    SECTION("sin test1"){
        strcpy(input,"sin(30)");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(0.00000001);
        REQUIRE(target == 0.5);
    }
    SECTION("sin test2"){
        strcpy(input,"sin(-330)");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(0.00000001);
        REQUIRE(target == 0.5);
    }
    SECTION("cos test1"){
        strcpy(input,"cos(60)");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(0.00000001);
        REQUIRE(target == 0.5);
    }
    SECTION("cos test2"){
        strcpy(input,"cos(-300)");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(0.00000001);
        REQUIRE(target == 0.5);
    }
    SECTION("tan test1"){
        strcpy(input,"tan(45)");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(0.00000001);
        REQUIRE(target == 1);
    }
    SECTION("tan test2"){
        strcpy(input,"tan(90)");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(0.00000001);
        REQUIRE(target == 16331239353195370.0);
    }
    SECTION("tan test3"){
        strcpy(input,"tan(-135)");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(0.00000001);
        REQUIRE(target == 1);
    }
    SECTION("arcsin test"){
        strcpy(input,"arcsin(0.5)");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(0.00000001);
        REQUIRE(target == 30);
    }
    SECTION("arccos test"){
        strcpy(input,"arccos(0.5)");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(0.00000001);
        REQUIRE(target == 60);
    }
    SECTION("arctan test"){
        strcpy(input,"arctan(1)");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(0.00000001);
        REQUIRE(target == 45);
    }
    SECTION("out of range test"){
        strcpy(input,"arcsin(2)");
        calc(input,output);
        int res = strcmp(output,"-nan");  //返回了0
        REQUIRE(res == 0);
    }
}

TEST_CASE("other operation symbols test","[calc]"){
    SECTION("mod test1"){
        strcpy(input,"15%7");
        calc(input,output);
        int res = strncmp(output,"1",1);
        REQUIRE(res == 0);
    }
    SECTION("mod test2"){
        strcpy(input,"-5%3");
        calc(input,output);
        int res = strncmp(output,"-2",2);
        REQUIRE(res == 0);
    }
    SECTION("power test1"){
        strcpy(input,"2^4");
        calc(input,output);
        int res = strncmp(output,"16",2);
        REQUIRE(res == 0);
    }
    SECTION("power test2"){
        strcpy(input,"2^(-2)");
        calc(input,output);
        int res = strncmp(output,"0.25",4);
        REQUIRE(res == 0);
    }
    SECTION("square root test"){
        strcpy(input,"sqrt(16)");
        calc(input,output);
        int res = strcmp(output,"4");
        REQUIRE(res == 0);
    }
    SECTION("error square root test"){
        strcpy(input,"sqrt(-4)");
        calc(input,output);
        int res = strncmp(output,"-nan",4);
        REQUIRE(res == 0);
    }
    SECTION("ln function test"){
        strcpy(input,"log(exp(2))");
        calc(input,output);
        int res = strncmp(output,"2",1);
        REQUIRE(res == 0);
    }
    SECTION("error ln function test"){
        strcpy(input,"log(-4)");
        calc(input,output);
        int res = strncmp(output,"-nan",4);
        REQUIRE(res == 0);
    }
    SECTION("absolute value test"){
        strcpy(input,"abs(-5)");
        calc(input,output);
        int res = strncmp(output,"5",1);
        REQUIRE(res == 0);
    }
}

TEST_CASE("complex operation test","[calc]"){
    SECTION("test case1"){
        strcpy(input,"15+2*2");
        calc(input,output);
        int res = strcmp(output,"19");
        REQUIRE(res == 0);
    }
    SECTION("test case2"){
        strcpy(input,"(3+5)/(1+3)");
        calc(input,output);
        int res = strcmp(output,"2");
        REQUIRE(res == 0);
    }
    SECTION("test case3"){
        strcpy(input,"abs(sin(30)*4-8)");
        calc(input,output);
        int res = strcmp(output,"6");
        REQUIRE(res == 0);
    }
}

TEST_CASE("error/exception test","[calc]"){
    SECTION("ArithmeticException:by zero test"){
        strcpy(input,"5/0");
        calc(input,output);
        int res = strcmp(output,"Divide by zero");
        REQUIRE(res == 0);
    }
    SECTION("error expression test"){
        strcpy(input,"cos");
        calc(input,output);
        int res = strncmp(output,"\tError",5);
        REQUIRE(res == 0);
    }
    SECTION("too large numbers test"){
        strcpy(input,"99^99");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(1e+180);
        REQUIRE(target == 3.697296376497268e+197);
    }
    SECTION("too little numbers test"){
        strcpy(input,"1/99^99");
        calc(input,output);
        Approx target = Approx(stringToNum<double>(output)).margin(1e-180);
        REQUIRE(target == 2.7046790361647344e-198);
    }
}
