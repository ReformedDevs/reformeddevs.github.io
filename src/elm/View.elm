module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (id, class, href, style)
import Models exposing (..)
import Messages exposing (..)


baseStyles : List (String, String)
baseStyles =
  [ ("min-height", "100vh")
  , ("background-color", "rgb(250, 250, 250)")
  ]


title : List (String, String)
title =
  [ ("color", "rgb(75, 75, 75)")
  , ("font-size", "3em")
  , ("font-weight", "bold")
  ]


view : AppModel -> Html Msg
view model =
    div [class "clearfix", style baseStyles]
        [ pageView model
        ]


pageView : AppModel -> Html Msg
pageView model =
    case model.route of
        HomeRoute ->
            div [ class "col-12", style [("height", "100vh")]]
                [ div [class "col-12 flex justify-center"]
                    [ h1
                        [ style title]
                        [ text "The Reformed Devs" ]
                    ]
                , div [class "col-4 mx-auto"]
                    [ p
                        [ class "center", style [("color", "rgb(75, 75, 75)")]]
                        [ text
                          "Reformed Christian developers dedicated to
                          sharing interesting resources and tech while
                          collaborating on projects that further Christ's
                          kingdom."
                        ]
                    ]
                ]

        NotFoundRoute ->
            notFoundView model


notFoundView : AppModel -> Html msg
notFoundView model =
    div []
        [ text "Not Found"
        ]
