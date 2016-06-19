const React = require("react");
const ReactDOM = require("react-dom");
const {ActionCreators} = require("../../../actions/actions");
const {Editor, EditorState, RichUtils, getDefaultKeyBinding, Entity, AtomicBlockUtils} = require("draft-js");
const {connect} = require("react-redux");
const ICOCell = require("../ICOCell/ICOCell");

const {DOM, createElement} = React;
const {div} = DOM;
const unorderedListBlockType = 'unordered-list-item';


const ICOF = React.createClass({
  componentWillUpdate: function() {
    //// FIXME: Find better way to handle me
    const currentBlockType = RichUtils.getCurrentBlockType(this.props.editorState);

    if (currentBlockType !== unorderedListBlockType) {
      this.props.onChange(RichUtils.toggleBlockType(this.props.editorState, unorderedListBlockType));
    }
  },

  render: function() {
    return div({className: "ICOF"}, [
      div({className: "ICOF-title", key: 0},
        "ICO"
      ),
      createElement(Editor, {
        editorState: this.props.editorState,
        onChange: this.props.onChange,
        handleKeyCommand: this.handleKeyCommand,
        blockRendererFn: this.blockRendererFn,
        onTab: this.onTab,
        key: 1
      }),
      div({className: "ICOF-user", key: 2, style: {backgroundImage: "url(" + this.props.currentLoggedUser.profileImg + ")" }})
    ])
  },

  blockRendererFn: function(contentBlock) {
    blockType = contentBlock.getType();

    switch (blockType) {
      case unorderedListBlockType:
        return {
          component: ICOCell,
          editable: true
        }
        break;
    }
  },

  onTab: function(event) {
    event.preventDefault();
    const {editorState} = this.props;
    const newEditorState = RichUtils.onTab(event, editorState, 40);

    if (newEditorState !== editorState) {
      this.props.onChange(newEditorState);
    };
  },

  handleKeyCommand: function(command) {
    const newState = RichUtils.handleKeyCommand(this.props.editorState, command);

    if (newState) {
      this.props.onChange(newState);
      return true;
    };

    return false;
  }
});


const mapStateToProps = (state) => {
  return {
    editorState: state.ICOF.editorState,
    currentLoggedUser: state.currentLoggedUser
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    onChange: (editorState) => {
      dispatch(ActionCreators.updateEditorState(editorState))
    }
  }
};

module.exports = connect(mapStateToProps, mapDispatchToProps)(ICOF)
