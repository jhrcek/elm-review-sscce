module ReviewConfig exposing (config)

import NoUnused.Exports
import Review.Rule exposing (Rule)


config : List Rule
config =
    [ NoUnused.Exports.rule
    ]
