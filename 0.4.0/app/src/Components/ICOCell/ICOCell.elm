module ICOCell where

import Html exposing (div, text, Html)
import Html.Attributes exposing (class, attribute)


-- MODEL

type ICOCell =
  ICOCell
    {
      value : String,
      children : List ICOCell,
      selected: Bool,
      id: Int
    }

getCellValue : ICOCell -> String
getCellValue cell =
  case cell of
    ICOCell a -> .value a

isCellSelected : ICOCell -> Bool
isCellSelected cell =
  case cell of
    ICOCell a -> .selected a

getCellID : ICOCell -> Int
getCellID cell =
  case cell of
    ICOCell a -> .id a


-- VIEW

icoCellView : ICOCell -> Html
icoCellView cell =
  let
    classValue = "ICOCell "
  in
    div [
      attribute "cell-id" <| toString <| getCellID cell,
      class <| classValue ++ if isCellSelected cell then "selected" else "" 
    ] [
      text <| getCellValue cell
    ]
