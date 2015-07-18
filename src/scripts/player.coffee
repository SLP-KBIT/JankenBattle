Player = React.createClass
  mixins: [React.addons.LinkedStateMixin]

  getInitialState: ->
    name: ""

  handleUpload: ->
    console.log @state.name

  render: ->
    player_name = "Player" + @props.id

    <div className="Player">
      <h2 className="uk-text-center">{player_name}</h2>
      <form className="uk-form">
        <table>
          <tr>
            <th className="uk-width-1-3 uk-text-center">プレイヤ名</th>
            <td className="uk-width-2-3">
              <input className="uk-width-1-1" type="text" valueLink={@linkState("name")} />
            </td>
          </tr>
          <tr>
            <th className="uk-width-1-3 uk-text-center">戦略ファイル</th>
            <td className="uk-width-2-3">
              <input className="uk-width-1-1" type="file" />
            </td>
          </tr>
        </table>
        <br />
        <button className="uk-button" type="button" onClick={@handleUpload}>upload</button>
      </form>
    </div>

