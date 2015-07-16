PlayerForm = React.createClass
  render: ->
    <div className="PlayerForm">
      <form>
        <div className="uk-grid uk-grid-divider">
          <div className="uk-width-1-2">
            <Player id=1 />
          </div>
          <div className="uk-width-1-2">
            <Player id=2 />
          </div>
        </div>
      </form>
    </div>

