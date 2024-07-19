# Project Overview

## Description
This F# project focuses on parsing “simple C” programs, identifying valid syntax and reporting syntax errors using a lexical analyzer and a recursive-descent parser. It simplifies complex language rules to enhance understanding of programming constructs and parsing techniques.

## Lexical Analysis
The `lexer.fs` module converts the source code into tokens essential for parsing. This module handles scanning input text, identifying, and categorizing components like keywords, identifiers, and symbols into tokens.

## Syntax Parsing
I specifically contributed to the `parser.fs` module, which checks the tokens against the simplified rules of "simple C" syntax. It assesses whether the token arrangement conforms to the grammar, reporting errors or confirming the syntactic correctness of the code.

## Technical Implementation
- **Lexer Module (`lexer.fs`)**: Handles the conversion of text into a structured series of tokens.
- **Parser Module (`parser.fs`)**: Developed by me, this module checks the tokens for syntactic integrity and reports any syntax errors.

## Steps Executed by the Application
1. **Token Generation**: Transforms raw source code into a sequence of tokens.
2. **Syntax Validation**: Applies grammar rules to assess the syntactical structure.
3. **Error Reporting**: Identifies and reports syntax errors or validates the syntax of the program.

## Usage Instructions
To use the application, users need to enter the filename when prompted. The program comes with provided short C language codes (`main1.c`, `main2.c`, and `main3.c`), which are ready for testing.

## Compilation and Execution
- **Compile the Application**: Execute `make build` to compile the source files into an executable.
- **Run the Application**: Use `make run` after compiling, then follow the prompts to provide a filename and receive feedback on the syntax analysis.
- **Clean the Build**: Use `make clean` to remove all compiled files for a fresh start.

## Contributions
While the lexer module and the initial project setup were done by Prof. Joe Hummel of the University of Illinois, Chicago, my specific contribution lies in the development of the `parser.fs` modulem, which involved implementing the parsing logic.
