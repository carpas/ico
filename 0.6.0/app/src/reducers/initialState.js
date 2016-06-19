const {EditorState} = require('draft-js');


const initialState = {
  ICOF: {
    editorState: EditorState.createEmpty()
  },

  currentLoggedUser: {
    profileImg: "/img/user-profile.png"
  }
};


module.exports = initialState;
