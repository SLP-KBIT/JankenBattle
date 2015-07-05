React = require 'react'
Hand = require './hand.cjsx'

Turn = React.createClass
  render: ->
    <tr>
      <Hand type={this.props.hand1} />
      <Hand type={this.props.hand2} />
    </tr>

module.exports = Turn

