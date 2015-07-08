React = require 'react'

Hand = React.createClass
  render: ->
    <td>
      <img className={@props.type} />
    </td>

module.exports = Hand

