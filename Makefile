myinterpreter : Main.hs
	ghc -o myinterpreter Main.hs

Main.hs : Tokens.hs Grammar.hs

Tokens.hs : Tokens.x
	~/.cabal/bin/alex Tokens.x

Grammar.hs : Grammar.y
	~/.cabal/bin/happy Grammar.y
