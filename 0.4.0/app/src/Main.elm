module Main where

import Html exposing (div, text, Html, h2, input)
import Html.Attributes exposing (type', placeholder)
import Html.Events exposing (on, targetValue)
import ICOF


main : Signal Html
main =
    ICOF.main
