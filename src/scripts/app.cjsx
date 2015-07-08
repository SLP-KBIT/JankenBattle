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

  componentDidMount: ->
    @loadGameResult()

  render: ->
    <Game data={@state.data} />

module.exports = App

