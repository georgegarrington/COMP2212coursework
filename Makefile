myinterpreter : Main.hs Evaluator.hs IOReader.hs Tokens.hs Grammar.hs
	ghc Main -o "myinterpreter"
	rm -rf Tokens.hs Grammar.hs *.hi *.o *.info

Tokens.hs : Tokens.x
	alex Tokens.x

Grammar.hs : Grammar.y
	happy Grammar.y
