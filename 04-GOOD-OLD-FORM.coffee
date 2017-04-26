express    = require 'express'

{ urlencoded: urldecode } = require 'body-parser'

String::reverse ?= -> @split('').reverse().join ''

app = express()

app.use urldecode extended: false

app.post '/form', (req, res) -> res.end req.body.str.reverse()

app.listen process.argv[2]
