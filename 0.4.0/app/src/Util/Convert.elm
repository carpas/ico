module Convert where

import Debug


maybeToValue : Maybe a -> a
maybeToValue maybe =
  case maybe of
    Just y -> y
    Nothing -> Debug.crash "error: maybeToValue Nothing"
