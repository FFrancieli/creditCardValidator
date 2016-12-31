Validates credit card number. Instructions may be found in: http://www.seas.upenn.edu/~cis194/spring13/hw/01-intro.pdf

### dependencies
  * [HSpec](http://hspec.github.io/)
  * [Haskell Stack](https://docs.haskellstack.org/en/stable/README/)
  
### Runing tests
  `stack test`
  
  if you get this error message:
  
  `No compiler found, expected minor version match with... Try running "stack setup" to install the correct GHC...`
  
  you may need to run `stack setup` before running the tests
  
  if you get this error message:
  
  `No .cabal file found in directory`
  
  it means you are using an old stack version and you will have to upgrade it.
