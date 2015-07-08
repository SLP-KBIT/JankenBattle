React = require 'react'
Game = require './game.cjsx'

App = React.createClass
  getInitialState: ->
    data: []

  loadGameResult: ->
    $.ajax
      url: '/api/battle'
      type: 'GET'
      dataType: 'json'
      cache: false
      success: ((json) ->
        @setState data: json
      ).bind(this)

  onClick: (e) ->
    @loadGameResult()

  render: ->
    <div className="App">
      <button onClick={@onClick}>battle!!</button>
      <Game data={@state.data} />
    </div>

module.exports = App

