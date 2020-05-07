# What is this coursework?


From our Programming Language Concepts module; we were tasked with creating a Haskell interpreter for our own custom designed domain specific language which manipulates streams of integers, making use of the Haskell libraries Alex for lexing and Happy for parsing. The BNF of our language can be found in the file "Grammar.y", which is also the file used by the happy library to generate the parser.

## Compiling

1. If you don't have happy and alex installed (if you are using cabal) simple run cabal install alex and cabal install happy
2. If you have trouble adding them to your path they can be referenced directly: ~/.cabal/bin/alex, ~/.cabal/bin/happy
3. cd into the directory and run "make"
4. An executable will appear called myinterpreter

## Verification of functionality

- I have included a directory "automarker" which also contains the programs in other folders along with their inputs and expected outputs

- The script in this directory is the one our lecutrers used to mark our code with

- Once you have compiled the executable "myinterpreter", copy it into the automarker directory and run the script named "auto" in the automarker directory

- This will run each of my programs against the example inputs and verify the outputs match the expected outputs

## Usage

- myinterpreter [program file path] < [streams input file path]

- example: ./myinterpreter pr1.spl < input1.txt

- This will run the program in my custom designed language with the stream input data in the text file

- I have included the 5 programs described in the pdf brief and their inputs: "prN.spl" with input "inputN.txt"

- If you do not need to make use of stream data and simply wish to write a program for pure calculation, simply run your program with the stream input file "blank" in the test inputs folder
