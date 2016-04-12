module ICOF where

import Html exposing (div, button, p, Html, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class)
import ICOCell exposing (ICOCell)


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
            value = "Parent",
            children = [
              ICOCell {
                value = "Child 1",
                children = []
              }
            ]
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


-- INPUTS

mailbox : Signal.Mailbox Action
mailbox =
    Signal.mailbox NoOp

modelSignal : Signal Model
modelSignal =
    Signal.foldp update initialModel mailbox.signal


-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
    div [ class "ICOF" ] []


-- MAIN

main : Signal Html
main =
    Signal.map (view mailbox.address) modelSignal
