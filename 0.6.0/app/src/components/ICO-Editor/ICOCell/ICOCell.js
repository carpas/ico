const React = require("react");
const {EditorBlock} = require("draft-js");

const {DOM, createElement} = React;
const {div} = DOM;


const ICOCell = React.createClass({
  render: function() {
    return  div({className: "ICOCell"}, [
      createElement(EditorBlock, {...this.props, key: 0})
    ])
  }
});


module.exports = ICOCell;
