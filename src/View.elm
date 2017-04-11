module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (src, id, class)
import Msgs exposing (Msg)
import Models exposing (Model, Page)
import Array
import Util exposing (..)

view : Model -> Html Msg
view model =
    let
        l = List.length model.pages
        t = if model.idx > 0 then 1 else 0
        p = model.pages . Array.fromList . Array.get ((model.idx + l - t) % l) . Maybe.withDefault (Page "O" "" [])
    in
        div []
            [ div [ id "header" ] [ p.header . text ],
              code p.code,
              if (List.isEmpty p.lines) then (div [] []) else (div [ id "main1" ] (List.map line p.lines)),
              div [ id "page" ] [ ((toString model.idx) ++ " of " ++ (model.pages . List.length . toString)) . text ]
            ]

line l =
    let
        t c = div [ class c ] [ text (String.dropLeft 1 l) ]
    in
        case String.left 1 l of
            "@" -> t "code5"
            "*" -> t "code6"
            "&" -> t "code51"
            _ -> div [] [ text l ]

code c =
    case String.left 1 c of
        "" -> div [] []
        "$" -> div [ id "code" ] [ iframe [ src ("https://embed.ellie-app.com/" ++ (String.dropLeft 2 c) ++ "/" ++ (String.slice 1 2 c)) ] [] ]
        "&" -> div [ id "code" ] [ iframe [ src ("https://embed.plnkr.co/" ++ (String.dropLeft 1 c) ++ "/?show=script.js,script.jsx,app.ts,preview&autoCloseSidebar=true") ] [] ]
        _ -> div [ id "code" ] [ iframe [ src ("https://jsbin.com/" ++ c ++ "/latest/embed?js,console") ] [] ]
