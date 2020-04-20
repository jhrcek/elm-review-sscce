module ReviewConfig exposing (config)

import NoUnused.CustomTypeConstructors
import Review.Rule exposing (Rule)


config : List Rule
config =
    [ NoUnused.CustomTypeConstructors.rule []
    ]
