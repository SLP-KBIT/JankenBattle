React = require 'react'
Hand = require './hand.cjsx'

Turn = React.createClass
  render: ->
    <div>
      <Hand type="rock" />
      <Hand type="paper" />
    </div>

module.exports = Turn

