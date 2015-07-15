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

  battleStart: (e) ->
    @loadGameResult()

  render: ->
    <div className="App">
      <Button onClick={@battleStart} />
      <Game data={@state.data} />
    </div>

