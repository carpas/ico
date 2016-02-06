React = require 'react'
{createElement} = React
{string, arrayOf, shape, number} = React.PropTypes
ReactDOM = require 'react-dom'
TestUtils = require 'react-addons-test-utils'
jest.dontMock '../../../src/components/icof/icof'
ICOFComponent = require "../../../src/components/icof/icof"
ICOF = undefined
propTypes = ICOFComponent.propTypes


describe "ICOF Component", =>

	beforeEach =>
		ICOF = TestUtils.renderIntoDocument createElement(ICOFComponent, {
			icofName: "Icof Name"
			children: [
				{
					content: "Teste 2"
					id: 1
				}
				{
					content: "Teste 3"
					id: 2
				}
				{
					content: "Teste 4"
					id: 3
				}
			]
		})


	it "Should render itself correctly", =>
