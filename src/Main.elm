module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



-- NOTE: MODEL, UPDATE, VIEWというアーキテクチャの形に沿って作ってくれる？


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement



-- update関数。最後の一つが返り値の型で、それ以前は引数？ \
-- → というより、手前の１個の引数を使って、残りの型の計算をする無名関数が順々に呼ばれているという事らしい
-- `update(msg: Msg, model: Model) => Model`


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- View
-- Modelを使ってView(HTML)を生成する


view : Model -> Html Msg
view model =
    div [] [ button [ onClick Decrement ] [ text "-" ], text (String.fromInt model), button [ onClick Increment ] [ text "+" ] ]
