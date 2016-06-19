const initialState = require('./initialState');
const {ActionTypes} = require('../actions/actions');
const {combineReducers} = require('redux');


const ICOF = (state = initialState.ICOF, action) => {
  switch (action.type) {
    case ActionTypes.ICOF.UPDATE_STATE:
      return Object.assign({}, state, {
        editorState: action.payload.editorState
      });

      break;

    default:
      return state
  }
};

const currentLoggedUser = (state = initialState.currentLoggedUser, action) => {
  switch (action.type) {
    default:
      return state
  }
};


module.exports = combineReducers({ICOF, currentLoggedUser});
