let lib = ./lib.dhall

let tests = ./tests.dhall

in  { name = "purescript-foreign-object-dev"
    , dependencies = lib.dependencies # tests.dependencies
    , backend = lib.backend
    , packages = lib.packages
    , sources = lib.sources # tests.sources
    }
