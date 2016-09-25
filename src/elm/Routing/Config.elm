module Routing.Config exposing (..)

import Hop.Types exposing (Config, Location, Query, Router, PathMatcher, newLocation)
import Hop.Matchers exposing (..)
import Models exposing (..)


matcherHome : PathMatcher Route
matcherHome =
    match1 HomeRoute ""


matchers : List (PathMatcher Route)
matchers =
    [ matcherHome
    ]


config : Config Route
config =
    { basePath = "/"
    , hash = False
    , matchers = matchers
    , notFound = NotFoundRoute
    }
