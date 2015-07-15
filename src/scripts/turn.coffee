Turn = React.createClass
  render: ->
    <tr>
      <Hand type={@props.hand1} />
      <Hand type={@props.hand2} />
    </tr>

