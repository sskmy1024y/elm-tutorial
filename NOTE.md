# Elm tutorial

## 1. プロジェクトを作る

1. elmをnpmでいれる
   `npm install elm`
2. elmプロジェクトを作成する
   `npx elm init`
3. divを出力してみた

```elm
module Main exposing (main)

import Html exposing (div, text)



-- interfaceのようなもの。
-- greet: (string) => string


greet : String -> String
greet name =
    "Hello " ++ name ++ "!"



-- NOTE: divを作成して、文字を埋め込んでいる？


main =
    div [] [ greet "hoge" |> text ]

```

1. elmファイルを作ってみる
   <https://guide.elm-lang.jp/architecture/buttons.html>
