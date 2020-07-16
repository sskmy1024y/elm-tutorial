module Main exposing (main)

import Html exposing (Html, div, text)



-- NOTE: divを作成して、文字を埋め込んでいる？


main : Html msg
main =
    div [] [ greet "hoge" |> text ]



-- interfaceのようなもの。
-- greet: (string) => string


greet : String -> String
greet name =
    "Hello " ++ name ++ "!"
