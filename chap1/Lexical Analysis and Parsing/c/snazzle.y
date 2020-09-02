%{
  #include <cstdio>
  #include <iostream>
  using namespace std;

  // Declare stuff from Flex that Bison needs to know about:
  extern int yylex();
  extern int yyparse();
  extern FILE *yyin;
 
  void yyerror(const char *s);
%}

// Bison fundamentally works by asking flex to get the next token, which it
// returns as an object of type "yystype".  Initially (by default), yystype
// is merely a typedef of "int", but for non-trivial projects, tokens could
// be of any arbitrary data type.  So, to deal with that, the idea is to
// override yystype's default typedef to be a C union instead.  Unions can
// hold all of the types of tokens that Flex could return, and this this means
// we can return ints or floats or strings cleanly.  Bison implements this
// mechanism with the %union directive:
%union {
  int ival;
  float fval;
  char *sval;
}

// Define the "terminal symbol" toke type
%token <ival> INT
%token <fval> FLOAT
%token <sval> STRING

%%
snazzle:
    INT snazzle {
        cout << "bison found an int: " << $1 << endl;
    }
    | FLOAT snazzle {
        cout << "bison found a float: " << $1 << endl;
    } 
    | STRING snazzle {
        cout << "bison found a string: " << $1 << endl;
    } 
    | INT {
        cout << "bison found an int: " << $1 << endl;
    }
    | FLOAT {
        cout << "bison found a float: " << $1 << endl;
    } 
    | STRING {
        cout << "bison found a string: " << $1 << endl;
    }
    ;
%%

int main(int, char**) {
    FILE *myfile = fopen("a.snazzle.file","r");
    if(!myfile){
        cout << "I can't open a.snazzle.file!" << endl;
        return -1;
    }
    yyin = myfile;

    yyparse();
}

void yyerror(const char *s){
    cout << "Ops, parse error! Message: " << s << endl;
    exit(-1);
}
    