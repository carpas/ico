import Html exposing (div, text, Html, h2, input)
import Html.Attributes exposing (type', placeholder)
import Html.Events exposing (on, targetValue)


-- MODEL

type alias Model = String

initialModel =
    "User"


-- UPDATE

type Action = NoOp | UpdatePerson String

update : Action -> Model -> Model
update action model =
    case action of
        NoOp ->
            model

        UpdatePerson newPerson ->
            newPerson


-- MAILBOX

mailbox : Signal.Mailbox Action
mailbox =
    Signal.mailbox NoOp

modelSignal : Signal Model
modelSignal =
    Signal.foldp update initialModel mailbox.signal


-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
    div [] [
        h2 [] [ text ("Hello " ++ model ++ "! ")],
        input [
            type' "text",
            placeholder "Put your name here...",
            on "input" targetValue (\text -> Signal.message address (UpdatePerson text))
        ] []
    ]


-- MAIN

main : Signal Html
main =
    Signal.map (view mailbox.address) modelSignal












