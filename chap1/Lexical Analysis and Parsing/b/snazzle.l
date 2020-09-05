%{
    #include <iostream>
    using namespace std;
    extern int yylex();
%}
%option noyywrap
%%
[ \t\n]     ;
[0-9]+\.[0-9]+  { cout << "Found a floating-point number:" << yytext << endl;}
[0-9]           { cout << "Found an integer:" << yytext << endl; }
[a-zA-Z0-9]+    { cout << "Found a string:" << yytext << endl; }
%%
int main(int argc,char** argv){
    // open a file handle to a particular file:
    FILE *myfile = fopen(argv[1],"r");
    // make sure it's valid;
    if(!myfile){
        cout << "I'cant open a.snazzle.file!" << endl;
        return -1;
    }
    yyin = myfile;
    
    // lex through the input;
    while (yylex());
}