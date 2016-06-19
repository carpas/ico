const React = require("react");
const {render} = require("react-dom");
const reducers = require("./reducers/reducers");
const ICOF = require("./components/ICO-Editor/ICOF/ICOF");
const initialState = require("./reducers/initialState");
const {createStore} = require("redux");
const {Provider} = require("react-redux");

const {createElement} = React;
const {div} = React.DOM;

const store = createStore(reducers, initialState, window.devToolsExtension && window.devToolsExtension());


const Main = () => {
  return render(
    createElement(Provider, {store},
      createElement(ICOF, {})
    ),
    document.getElementById("ico-wrapper")
  );
};


module.exports = Main();
