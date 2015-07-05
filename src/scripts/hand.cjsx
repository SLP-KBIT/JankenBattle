React = require 'react'

Hand = React.createClass
  render: ->
    <td>
      <img className={this.props.type} />
    </td>

module.exports = Hand

