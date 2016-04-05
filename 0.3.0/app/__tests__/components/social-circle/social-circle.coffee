React = require 'react'
{createElement} = React
ReactDOM = require 'react-dom'
TestUtils = require 'react-addons-test-utils'
jest.dontMock '../../../src/components/social-circle/social-circle'
SocialCircleComponent = require "../../../src/components/social-circle/social-circle"
SocialCircle = undefined


describe "SocialCircle Component", =>

	beforeEach =>
		SocialCircle = TestUtils.renderIntoDocument createElement(SocialCircleComponent)


	it "should render correctly", =>

