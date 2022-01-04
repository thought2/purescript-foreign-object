module Test.Main where

import Prelude
import Test.MiraculixLite (TestTree, runTests, testGroup)
import Tests.Foreign.Object as Tests.Foreign.Object

main = runTests tests

tests :: TestTree
tests =
  testGroup "foreign-object"
    [ Tests.Foreign.Object.tests
    ]
