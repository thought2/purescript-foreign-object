module Test.Main where

import Prelude
import Test.Miraculix (TestTree, runTests, testGroup)
import Test.Function.Uncurried as Test.Function.Uncurried

main = runTests tests

tests :: TestTree
tests =
  testGroup "functions"
    [ Test.Function.Uncurried.tests
    ]
