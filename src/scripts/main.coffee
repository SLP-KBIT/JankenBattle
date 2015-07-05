React = require('react')
Game = require('./game.cjsx')

data = [
  {hand1: "rock", hand2: "paper"}
  {hand1: "rock", hand2: "rock"}
  {hand1: "scissors", hand2: "rock"}
]

React.render <Game data=data />, document.getElementById('content')

