module ICOF where

import Html exposing (div, button, p, Html, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class)
import Convert exposing (maybeToValue)
import ICOCell exposing (icoCellView, ICOCell (ICOCell), getCellID)


-- MODEL

type alias Model =
    {
        content : List ICOCell
    }

initialModel : Model
initialModel =
    {
        content = [
          ICOCell {
            value = "1.1",
            children = [],
            selected = True,
            id = 1
          },
          ICOCell {
            value = "1.2",
            children = [],
            selected = False,
            id = 2
          }
        ]
    }


-- UPDATE

type Action
    = NoOp
    | AddICOCell
    | RemoveICOCell
    | MoveCursorUP
    | MoveCursorDOWN
    | SelectCell Int


update : Action -> Model -> Model
update action model =

    {-
    ---- TODO: Implement cases.
    -}

    case action of
        NoOp ->
          model

        AddICOCell ->
          model

        RemoveICOCell ->
          model

        MoveCursorUP ->
          model

        MoveCursorDOWN ->
          model

        SelectCell id ->
          {
            model | content = [
              ICOCell {
                value = "1.1",
                children = [],
                selected = False,
                id = 1
              },
              ICOCell {
                value = "1.2",
                children = [],
                selected = True,
                id = 2
              }
            ]
          }


-- SIGNALS

mailbox : Signal.Mailbox Action
mailbox =
    Signal.mailbox NoOp

modelSignal : Signal Model
modelSignal =
    Signal.foldp update initialModel mailbox.signal


-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
  let
    parentCell = maybeToValue <| List.head model.content
  in
    -- FIXME: Add all children.
    div [ class "ICOF" ]
      <| List.map
        (\cellInfo-> icoCellView cellInfo <| onClick mailbox.address <| SelectCell <| getCellID cellInfo)
        model.content


-- MAIN

main : Signal Html
main =
    Signal.map (view mailbox.address) modelSignal
