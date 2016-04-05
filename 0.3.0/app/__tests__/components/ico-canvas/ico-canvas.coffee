React = require 'react'
{createElement} = React
ReactDOM = require 'react-dom'
TestUtils = require 'react-addons-test-utils'
jest.dontMock '../../../src/components/ico-canvas/ico-canvas'
ICOCanvasComponent = require "../../../src/components/ico-canvas/ico-canvas"
ICOCanvas = undefined


describe "ICOCanvas Component", =>

	beforeEach =>
		ICOCanvas = TestUtils.renderIntoDocument createElement(ICOCanvasComponent)


	it "Should render correctly", =>

