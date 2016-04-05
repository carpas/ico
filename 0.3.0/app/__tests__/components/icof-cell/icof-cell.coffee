React = require 'react'
{createElement} = React
ReactDOM = require 'react-dom'
TestUtils = require 'react-addons-test-utils'
jest.dontMock '../../../src/components/icof-cell/icof-cell'
ICOFCellComponent = require "../../../src/components/icof-cell/icof-cell"
ICOFCell = undefined


describe "ICOFCell Component", =>

	beforeEach =>
		ICOFCell = TestUtils.renderIntoDocument createElement(ICOFCellComponent)


	it "should render correctly", =>
		
