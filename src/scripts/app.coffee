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
      <div className="uk-container uk-container-center">
        <br />
        <h1>メインページ</h1>
        <PlayerForm />
        <br />
        <div className="uk-grid">
          <div className="uk-width-1-3"></div>
          <div className="uk-width-1-3">
            <Button onClick={@battleStart} />
            <Game data={@state.data} />
          </div>
          <div className="uk-width-1-3"></div>
        </div>
      </div>
    </div>

