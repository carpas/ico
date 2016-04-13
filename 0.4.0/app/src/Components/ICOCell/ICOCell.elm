module ICOCell where

import Html exposing (div, text, Html, button)
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

icoCellView : ICOCell -> Html.Attribute -> Html
icoCellView cellInfo onClick =
  let
    classValue = "ICOCell "
  in
    div [
      attribute "cell-id" <| toString <| getCellID cellInfo,
      class <| classValue ++ if isCellSelected cellInfo then "selected" else "",
      onClick
    ] [
      text <| getCellValue cellInfo
    ]
