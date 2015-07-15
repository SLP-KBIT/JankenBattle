Game = React.createClass
  render: ->
    rows = @props.data.map (turn) ->
      <Turn hand1={turn.hand1} hand2={turn.hand2} />
    <table className="uk-table uk-width-1-1">
      {rows}
    </table>

