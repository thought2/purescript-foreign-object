let lib = ./lib.dhall

in  { name = "purescript-foreign-object-test"
    , dependencies = lib.dependencies # [ "miraculix-lite", "tuples" ]
    , backend = "purenix"
    , packages = ./packages.dhall
    , sources = lib.sources # [ "test/**/*.purs" ]
    }
