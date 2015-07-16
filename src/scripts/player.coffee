Player = React.createClass
  render: ->
    <div className="Player">
      <h2 className="uk-text-center">Player</h2>
      <div className="uk-form">
        <table>
          <tr>
            <th className="uk-width-1-3 uk-text-center">プレイヤ名</th>
            <td className="uk-width-2-3">
              <input className="uk-width-1-1" type="text" />
            </td>
          </tr>
          <tr>
            <th className="uk-width-1-3 uk-text-center">戦略ファイル</th>
            <td className="uk-width-2-3">
              <input className="uk-width-1-1" type="file" />
            </td>
          </tr>
        </table>
      </div>
    </div>

