module Tests.Foreign.Object where

import Prelude
import Test.MiraculixLite (TestTree, testCase, testGroup, (@?=))
import Foreign.Object as O
import Foreign.Object (Object)
import Test.Util (eval)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested (type (/\), (/\))

tests :: TestTree
tests =
  testGroup "Foreign.Object"
    [ testGroup "toArrayWithKey"
        [ testCase "attribute set of ints"
            $ O.toArrayWithKey Tuple (eval "{ x = 1; y = 2; z = 3; }" :: Object Int)
            @?= [ "x" /\ 1, "y" /\ 2, "z" /\ 3 ]
        , testCase "empty"
            $ O.toArrayWithKey Tuple (eval "{}" :: Object Int)
            @?= ([] :: Array (String /\ Int))
        ]
    ]
