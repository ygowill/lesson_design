#include "calc.h"

#define bool char
#define true 1
#define false 0

#define PI 3.141592653589793

#define MAXTOKENLENGTH 512
//#define MAXPRECISION 20
#define DEFAULTPRECISION 5
#define FUNCTIONSEPARATOR "|"

typedef enum { addop, multop, expop, lparen, rparen, digit, value, decimal, space, text, function, identifier, argsep, invalid } Symbol;

typedef enum {
    divZero,
    overflow,
    parenMismatch,
    inputMissing,
} Error;

int  error_flag = -1;
char error_msg[20];

typedef char* token;

typedef double number;

void raise(Error err) {
    char* msg;
    error_flag = err;
    switch (err) {
    case divZero:
        msg = "Divide by zero";
        break;
    case overflow:
        msg = "Overflow";
        break;
    case parenMismatch:
        msg = "Mismatched parentheses";
        break;
    case inputMissing:
        msg = "Function input missing";
        break;
    }
    strcpy(error_msg, msg);
}

number buildNumber(token str) {
    number result = 0;
    /*while(*str && *str != '.')
    {
        result = result * 10 + toDigit(*str++);
    }*/
    result = strtod(str, NULL);
    return result;
}

token num2Str(number num) {
    int   len       = 0;
    int   precision = DEFAULTPRECISION;
    token str;

    str      = ( token )malloc(24 * sizeof(char));
    len      = fpconv_dtoa(num, str);
    str[len] = '\0';
    // len = snprintf(str, MAXTOKENLENGTH - 1, "%.*f", precision, num);

    return str;
}

number toRadians(number degrees) {
    return degrees * PI / 180.0;
}

number toDegrees(number radians) {
    return radians * 180.0 / PI;
}

token doFunc(Stack* s, token function) {
    token  input;
    number num;
    number result;
    number counter;
    number mean;
    if (stackSize(s) == 0) {
        return "Function input missing";
    }
    else if (stackSize(s) == 1 && strcmp(stackTop(s), FUNCTIONSEPARATOR) == 0) {
        stackPop(s);
        return "Function input missing";
    }
    input   = ( token )stackPop(s);
    num     = buildNumber(input);
    result  = num;
    counter = 0;

    if (strncmp(function, "abs", 3) == 0)
        result = fabs(num);
    else if (strncmp(function, "sin", 3) == 0)
        result = sin(toRadians(num));
    else if (strncmp(function, "cos", 3) == 0)
        result = cos(toRadians(num));
    else if (strncmp(function, "tan", 3) == 0)
        result = tan(toRadians(num));
    else if (strncmp(function, "arcsin", 6) == 0)
        result = toDegrees(asin(num));
    else if (strncmp(function, "arccos", 6) == 0)
        result = toDegrees(acos(num));
    else if (strncmp(function, "arctan", 6) == 0)
        result = toDegrees(atan(num));
    else if (strncmp(function, "sqrt", 4) == 0)
        result = sqrt(num);
    else if (strncmp(function, "cbrt", 4) == 0)
        result = cbrt(num);
    else if (strncmp(function, "log", 3) == 0)
        result = log(num);
    else if (strncmp(function, "exp", 3) == 0)
        result = exp(num);

    if (strcmp(stackTop(s), FUNCTIONSEPARATOR) == 0)
        stackPop(s);
    stackPush(s, num2Str(result));
    return 0;
}

int doOp(Stack* s, token op) {
    token  roperand = ( token )stackPop(s);
    token  loperand = ( token )stackPop(s);
    number lside    = buildNumber(loperand);
    number rside    = buildNumber(roperand);
    number ret;
    switch (*op) {
    case '^': {
        ret = pow(lside, rside);
    } break;
    case '*': {
        ret = lside * rside;
    } break;
    case '/': {
        if (rside == 0) {
            raise(divZero);
            return -1;
        }
        else
            ret = lside / rside;
    } break;
    case '%': {
        if (rside == 0) {
            raise(divZero);
            return -1;
        }
        else {
            ret = ( int )(lside / rside);
            ret = lside - (ret * rside);
        }
    } break;
    case '+': {
        ret = lside + rside;
    } break;
    case '-': {
        ret = lside - rside;
    } break;
    }
    stackPush(s, num2Str(ret));
    return 0;
}

Symbol type(char ch) {
    Symbol result;
    switch (ch) {
    case '+':
    case '-':
        result = addop;
        break;
    case '*':
    case '/':
    case '%':
        result = multop;
        break;
    case '^':
        result = expop;
        break;
    case '(':
        result = lparen;
        break;
    case ')':
        result = rparen;
        break;
    case '.':
        result = decimal;
        break;
    case ' ':
        result = space;
        break;
    case ',':
        result = argsep;
        break;
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
        result = digit;
        break;
    case 'A':
    case 'B':
    case 'C':
    case 'D':
    case 'E':
    case 'F':
    case 'G':
    case 'H':
    case 'I':
    case 'J':
    case 'K':
    case 'L':
    case 'M':
    case 'N':
    case 'O':
    case 'P':
    case 'Q':
    case 'R':
    case 'S':
    case 'T':
    case 'U':
    case 'V':
    case 'W':
    case 'X':
    case 'Y':
    case 'Z':
    case 'a':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'f':
    case 'g':
    case 'h':
    case 'i':
    case 'j':
    case 'k':
    case 'l':
    case 'm':
    case 'n':
    case 'o':
    case 'p':
    case 'q':
    case 'r':
    case 's':
    case 't':
    case 'u':
    case 'v':
    case 'w':
    case 'x':
    case 'y':
    case 'z':
        result = text;
        break;
    default:
        result = invalid;
        break;
    }
    return result;
}

bool isFunction(token tk) {
    return (strncmp(tk, "abs", 3) == 0 || strncmp(tk, "sin", 3) == 0 || strncmp(tk, "cos", 3) == 0 || strncmp(tk, "tan", 3) == 0 || strncmp(tk, "arcsin", 6) == 0 || strncmp(tk, "arccos", 6) == 0
            || strncmp(tk, "arctan", 6) == 0 || strncmp(tk, "sqrt", 4) == 0 || strncmp(tk, "log", 3) == 0 || strncmp(tk, "exp", 3) == 0);
}

Symbol tokenType(token tk) {
    Symbol ret;
    if (!tk)
        return invalid;
    ret = type(*tk);
    switch (ret) {
    case text:
        if (isFunction(tk))
            ret = function;
        else
            ret = identifier;
        break;
    case addop:
        if (*tk == '-' && strlen(tk) > 1)
            ret = tokenType(tk + 1);
        break;
    case decimal:
    case digit:
        ret = value;
        break;
    default:
        break;
    }
    return ret;
}

int tokenize(char* str, char*(**tokensRef)) {
    int    i         = 0;
    char** tokens    = NULL;
    char** tmp       = NULL;
    char*  ptr       = str;
    char   ch        = '\0';
    int    numTokens = 0;
    token  newToken;
    char*  tmpToken = malloc((MAXTOKENLENGTH + 1) * sizeof(char));
    if (!tmpToken) {
        fprintf(stderr, "Malloc of temporary buffer failed\n");
        return 0;
    }
    while ((ch = *ptr++)) {
        if (type(ch) == invalid) // Stop tokenizing when we encounter an invalid character
            break;

        newToken    = NULL;
        tmpToken[0] = '\0';
        switch (type(ch)) {
        case addop: {
            // Check if this is a negative
            if (ch == '-'
                && (numTokens == 0
                    || (tokenType(tokens[numTokens - 1]) == addop || tokenType(tokens[numTokens - 1]) == multop || tokenType(tokens[numTokens - 1]) == expop
                        || tokenType(tokens[numTokens - 1]) == lparen || tokenType(tokens[numTokens - 1]) == argsep))) {
                // Assemble an n-character (plus null-terminator) number token
                {
                    int  len         = 1;
                    bool hasDecimal  = false;
                    bool hasExponent = false;

                    if (type(ch) == decimal) // Allow numbers to start with decimal
                    {
                        // printf("Decimal\n");
                        hasDecimal = true;
                        len++;
                        tmpToken[0] = '0';
                        tmpToken[1] = '.';
                    }
                    else // Numbers that do not start with decimal
                    {
                        tmpToken[len - 1] = ch;
                    }

                    // Assemble rest of number
                    for (;    // Don't change len
                         *ptr // There is a next character and it is not null
                         && len <= MAXTOKENLENGTH
                         && (type(*ptr) == digit                                        // The next character is a digit
                             || ((type(*ptr) == decimal                                 // Or the next character is a decimal
                                  && hasDecimal == 0))                                  // But we have not added a decimal
                             || ((*ptr == 'E' || *ptr == 'e')                           // Or the next character is an exponent
                                 && hasExponent == false)                               // But we have not added an exponent yet
                             || ((*ptr == '+' || *ptr == '-') && hasExponent == true)); // Exponent with sign
                         ++len) {
                        if (type(*ptr) == decimal)
                            hasDecimal = true;
                        else if (*ptr == 'E' || *ptr == 'e')
                            hasExponent = true;
                        tmpToken[len] = *ptr++;
                    }

                    // Append null-terminator
                    tmpToken[len] = '\0';
                }
                break;
            }
            // If it's not part of a number, it's an op - fall through
        }
        case multop:
        case expop:
        case lparen:
        case rparen:
        case argsep:
            // Assemble a single-character (plus null-terminator) operation token
            {
                tmpToken[0] = ch;
                tmpToken[1] = '\0';
            }
            break;
        case digit:
        case decimal:
            // Assemble an n-character (plus null-terminator) number token
            {
                int  len         = 1;
                bool hasDecimal  = false;
                bool hasExponent = false;

                if (type(ch) == decimal) // Allow numbers to start with decimal
                {
                    // printf("Decimal\n");
                    hasDecimal = true;
                    len++;
                    tmpToken[0] = '0';
                    tmpToken[1] = '.';
                }
                else // Numbers that do not start with decimal
                {
                    tmpToken[len - 1] = ch;
                }

                // Assemble rest of number
                for (;    // Don't change len
                     *ptr // There is a next character and it is not null
                     && len <= MAXTOKENLENGTH
                     && (type(*ptr) == digit                                        // The next character is a digit
                         || ((type(*ptr) == decimal                                 // Or the next character is a decimal
                              && hasDecimal == 0))                                  // But we have not added a decimal
                         || ((*ptr == 'E' || *ptr == 'e')                           // Or the next character is an exponent
                             && hasExponent == false)                               // But we have not added an exponent yet
                         || ((*ptr == '+' || *ptr == '-') && hasExponent == true)); // Exponent with sign
                     ++len) {
                    if (type(*ptr) == decimal)
                        hasDecimal = true;
                    else if (*ptr == 'E' || *ptr == 'e')
                        hasExponent = true;
                    tmpToken[len] = *ptr++;
                }

                // Append null-terminator
                tmpToken[len] = '\0';
            }
            break;
        case text:
            // Assemble an n-character (plus null-terminator) text token
            {
                int len     = 1;
                tmpToken[0] = ch;
                for (len = 1; *ptr && type(*ptr) == text && len <= MAXTOKENLENGTH; ++len) {
                    tmpToken[len] = *ptr++;
                }
                tmpToken[len] = '\0';
            }
            break;
        default:
            break;
        }
        // Add to list of tokens
        if (tmpToken[0] != '\0' && strlen(tmpToken) > 0) {
            numTokens++;
            /*if(tokens == NULL) // First allocation
                tokens = (char**)malloc(numTokens * sizeof(char*));
            else*/

            newToken = malloc((strlen(tmpToken) + 1) * sizeof(char));
            if (!newToken) {
                numTokens--;
                break;
            }
            strcpy(newToken, tmpToken);
            newToken[strlen(tmpToken)] = '\0';
            tmp                        = ( char** )realloc(tokens, numTokens * sizeof(char*));
            if (tmp == NULL) {
                free(newToken);
                newToken = NULL;
                if (tokens != NULL) {
                    for (i = 0; i < numTokens - 1; i++) {
                        if (tokens[i] != NULL) {
                            free(tokens[i]);
                            tokens[i] = NULL;
                        }
                    }
                    free(tokens);
                    tokens = NULL;
                }
                *tokensRef = NULL;
                free(newToken);
                free(tmpToken);
                newToken = NULL;
                tmpToken = NULL;
                return 0;
            }
            tokens                = tmp;
            tmp                   = NULL;
            tokens[numTokens - 1] = newToken;
        }
    }
    *tokensRef = tokens; // Send back out
    free(tmpToken);
    tmpToken = NULL;
    return numTokens;
}

bool leftAssoc(token op) {
    bool ret = false;
    switch (tokenType(op)) {
    case addop:
    case multop:

        ret = true;
        break;
    case function:
    case expop:
        ret = false;
        break;
    default:
        break;
    }
    return ret;
}

int precedence(token op1, token op2) {
    int ret = 0;

    if (op2 == NULL)
        ret = 1;
    else if (tokenType(op1) == tokenType(op2)) // Equal precedence
        ret = 0;
    else if (tokenType(op1) == addop && (tokenType(op2) == multop || tokenType(op2) == expop)) // op1 has lower precedence
        ret = -1;
    else if (tokenType(op2) == addop && (tokenType(op1) == multop || tokenType(op1) == expop)) // op1 has higher precedence
        ret = 1;
    else if (tokenType(op1) == multop && tokenType(op2) == expop) // op1 has lower precedence
        ret = -1;
    else if (tokenType(op1) == expop && tokenType(op2) == multop) // op1 has higher precedence
        ret = 1;
    else if (tokenType(op1) == function && (tokenType(op2) == addop || tokenType(op2) == multop || tokenType(op2) == expop || tokenType(op2) == lparen))
        ret = 1;
    else if ((tokenType(op1) == addop || tokenType(op1) == multop || tokenType(op1) == expop) && tokenType(op2) == function)
        ret = -1;
    return ret;
}

void evalStackPush(Stack* s, token val) {
    switch (tokenType(val)) {
    case function: {
        // token res;
        // operand = (token)stackPop(s);
        if (doFunc(s, val) < 0)
            return;
        // stackPush(s, res);
    } break;
    case expop:
    case multop:
    case addop: {
        if (stackSize(s) >= 2) {
            // Pop two operands

            // Evaluate
            if (doOp(s, val) < 0)
                return;

            // Push result
            // stackPush(s, res);
        }
        else {
            stackPush(s, val);
        }
    } break;
    case value: {
        stackPush(s, val);
    } break;
    default:
        break;
    }
}

bool postfix(token* tokens, int numTokens, Stack* output) {
    Stack operators, intermediate;
    int   i;
    bool  err = false;
    stackInit(&operators, numTokens);
    stackInit(&intermediate, numTokens);
    for (i = 0; i < numTokens; i++) {
        // From Wikipedia/Shunting-yard_algorithm:
        switch (tokenType(tokens[i])) {
        case value: {
            // If the token is a number, then add it to the output queue.
            // printf("Adding number %s to output stack\n", tokens[i]);
            evalStackPush(output, tokens[i]);
        } break;
        case function: {
            while (stackSize(&operators) > 0 && (tokenType(tokens[i]) != lparen) && ((precedence(tokens[i], ( char* )stackTop(&operators)) <= 0))) {
                // printf("Moving operator %s from operator stack to output stack\n",
                // (char*)stackTop(&operators));
                evalStackPush(output, stackPop(&operators));
                stackPush(&intermediate, stackTop(output));
            }

            // If the token is a function token, then push it onto the stack.
            // printf("Adding operator %s to operator stack\n", tokens[i]);
            stackPush(&operators, tokens[i]);
        } break;
        case argsep: {
            /*
             * If the token is a function argument separator (e.g., a comma):
             *	 Until the token at the top of the stack is a left
             *	 paren, pop operators off the stack onto the output
             *	 queue. If no left paren encountered, either separator
             *	 was misplaced or parens mismatched.
             */
            while (stackSize(&operators) > 0 && tokenType(( token )stackTop(&operators)) != lparen && stackSize(&operators) > 1) {
                evalStackPush(output, stackPop(&operators));
                stackPush(&intermediate, stackTop(output));
            }
        } break;
        case addop:
        case multop:
        case expop: {
            /*
             * If the token is an operator, op1, then:
             *	 while there is an operator token, op2, at the top of the stack,
             *and either op1 is left-associative and its precedence is less than or
             *equal to that of op2, or op1 is right-associative and its precedence is
             *less than that of op2, pop op2 off the stack, onto the output queue push
             *op1 onto the stack
             */
            while (stackSize(&operators) > 0
                   && (tokenType(( char* )stackTop(&operators)) == addop || tokenType(( char* )stackTop(&operators)) == multop || tokenType(( char* )stackTop(&operators)) == expop)
                   && ((leftAssoc(tokens[i]) && precedence(tokens[i], ( char* )stackTop(&operators)) <= 0) || (!leftAssoc(tokens[i]) && precedence(tokens[i], ( char* )stackTop(&operators)) < 0))) {
                // printf("Moving operator %s from operator stack to output stack\n",
                // (char*)stackTop(&operators));
                evalStackPush(output, stackPop(&operators));
                stackPush(&intermediate, stackTop(output));
            }
            // printf("Adding operator %s to operator stack\n", tokens[i]);
            stackPush(&operators, tokens[i]);
        } break;
        case lparen: {
            // If the token is a left paren, then push it onto the stack
            // printf("Adding left paren to operator stack\n");
            if (tokenType(stackTop(&operators)) == function)
                stackPush(output, FUNCTIONSEPARATOR);
            stackPush(&operators, tokens[i]);
        } break;
        case rparen: {
            /*
             * If the token is a right paren:
             *	 Until the token at the top of the stack is a left paren, pop
             *operators off the stack onto the output queue Pop the left paren from
             *the stack, but not onto the output queue If the stack runs out without
             *finding a left paren, then there are mismatched parens
             */
            while (stackSize(&operators) > 0 && tokenType(( token )stackTop(&operators)) != lparen && stackSize(&operators) > 1) {
                evalStackPush(output, stackPop(&operators));
                stackPush(&intermediate, stackTop(output));
            }
            if (stackSize(&operators) > 0 && tokenType(( token )stackTop(&operators)) != lparen) {
                err = true;
                raise(parenMismatch);
            }
            stackPop(&operators); // Discard lparen
            while (stackSize(&operators) > 0 && tokenType(( token )stackTop(&operators)) == function) {
                evalStackPush(output, stackPop(&operators));
                stackPush(&intermediate, stackTop(output));
            }
        } break;
        default:
            break;
        }
    }
    /*
     * When there are no more tokens to read:
     *	 While there are still operator tokens on the stack:
     *		 If the operator token on the top of the stack is a paren, then
     *there are mismatched parens Pop the operator onto the output queue
     */
    while (stackSize(&operators) > 0) {
        if (tokenType(( token )stackTop(&operators)) == lparen) {
            raise(parenMismatch);
            err = true;
        }
        evalStackPush(output, stackPop(&operators));
        stackPush(&intermediate, stackTop(output));
    }
    // pop result from intermediate stack
    stackPop(&intermediate);
    // free remaining intermediate results
    while (stackSize(&intermediate) > 0) {
        token s = stackPop(&intermediate);
        free(s);
        s = NULL;
    }
    if (err == true) {
        while (stackSize(&operators) > 0) {
            token s = stackPop(&operators);
            free(s);
            s = NULL;
        }
    }
    stackFree(&intermediate);
    stackFree(&operators);
    return err;
}

void calc(char* str, char* output) {
    token* tokens    = NULL;
    int    numTokens = 0;
    Stack  expr;
    int    i;

    numTokens = tokenize(str, &tokens);

    stackInit(&expr, numTokens);
    postfix(tokens, numTokens, &expr);

    if (error_flag != -1) {
        strcpy(output, error_msg);
    }
    else if (stackSize(&expr) != 1) {
        strcpy(output, "\tError evaluating expression\n");
    }
    else {
        strcpy(output, ( char* )stackTop(&expr));
        for (i = 0; i < numTokens; i++) {
            if (tokens[i] == stackTop(&expr))
                tokens[i] = NULL;
        }
        token tmp = stackPop(&expr);
        free(tmp);
        tmp = NULL;
    }

    for (i = 0; i < numTokens; i++) {
        if (tokens[i] != NULL) {
            free(tokens[i]);
            tokens[i] = NULL;
        }
    }
    free(tokens);
    tokens = NULL;
    stackFree(&expr);
    error_flag = -1;
}
