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

  handleUpload: (id, name) ->
    $.ajax
      url: '/api/upload'
      type: 'POST'
      data: {id: id, name: name}
      dataType: 'json'
      cache: false

  battleStart: (e) ->
    @loadGameResult()

  render: ->
    <div className="App">
      <div className="uk-container uk-container-center">
        <br />
        <h1>メインページ</h1>
        <div className="uk-grid uk-grid-divider">
          <div className="uk-width-1-2">
            <Player id=1 onUpload={@handleUpload} />
          </div>
          <div className="uk-width-1-2">
            <Player id=2 onUpload={@handleUpload} />
          </div>
        </div>
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

