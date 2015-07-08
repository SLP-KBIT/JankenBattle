React = require 'react'
Hand = require './hand.cjsx'

Turn = React.createClass
  render: ->
    <tr>
      <Hand type={@props.hand1} />
      <Hand type={@props.hand2} />
    </tr>

module.exports = Turn

