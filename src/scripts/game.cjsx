React = require 'react'
Turn = require './turn.cjsx'

Game = React.createClass
  render: ->
    rows = @props.data.map (turn) ->
      <Turn hand1={turn.hand1} hand2={turn.hand2} />
    <table>
      {rows}
    </table>

module.exports = Game

