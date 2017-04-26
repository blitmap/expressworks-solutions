path    = require 'path'
express = require 'express'

[ port, template ] = process.argv[2..]

app = express()

app.set 'view engine', 'pug'
app.set 'views', template ? path.join __dirname, 'templates'

app.get '/home', (req, res) -> res.render 'index', date: new Date().toDateString()

app.listen port
