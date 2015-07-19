Player = React.createClass
  mixins: [React.addons.LinkedStateMixin]

  getInitialState: ->
    name: ""
    text: ""

  handleUpload: ->
    @props.onUpload(@props.id, @state.name, @state.text)

  render: ->
    player_name = "Player" + @props.id

    <div className="Player">
      <h2 className="uk-text-center">{player_name}</h2>
      <form className="uk-form">
        <table className="uk-table">
          <tr>
            <th className="uk-width-1-3 uk-text-center">プレイヤ名</th>
            <td className="uk-width-2-3">
              <input className="uk-width-1-1" type="text" valueLink={@linkState("name")} />
            </td>
          </tr>
          <tr>
            <th className="uk-width-1-3 uk-text-center">戦略</th>
            <td className="uk-width-2-3">
              <textarea className="uk-width-1-1" valueLink={@linkState("text")}></textarea>
            </td>
          </tr>
        </table>
        <br />
        <div className="uk-text-center">
          <button className="uk-button uk-button-primary" type="button" onClick={@handleUpload}>upload</button>
        </div>
      </form>
    </div>

