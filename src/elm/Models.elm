module Models exposing (..)

import Hop.Types exposing (Location, newLocation)


type Route
    = HomeRoute
    | NotFoundRoute


type alias AppModel =
    { location : Location
    , route : Route
    }


newAppModel : Route -> Hop.Types.Location -> AppModel
newAppModel route location =
    { location = location
    , route = route
    }
