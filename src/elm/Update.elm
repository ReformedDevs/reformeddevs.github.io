module Update exposing (..)

import Debug
import Navigation
import Hop exposing (makeUrl, makeUrlFromLocation, setQuery)
import Hop.Types
import Messages exposing (..)
import Models exposing (..)
import Routing.Config
import Routing.Utils


navigationCmd : String -> Cmd a
navigationCmd path =
    Navigation.newUrl (makeUrl Routing.Config.config path)


routerConfig : Hop.Types.Config Route
routerConfig =
    Routing.Config.config


update : Msg -> AppModel -> ( AppModel, Cmd Msg )
update message model =
    case Debug.log "message" message of
        ShowHome ->
            let
                path =
                    Routing.Utils.reverse HomeRoute
                _ =
                    Debug.log "model" model
            in
                ( model, navigationCmd path )
