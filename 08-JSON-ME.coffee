fs      = require 'fs'
express = require 'express'

[ port, filepath ] = process.argv[2..]

app = express()

app.get '/books', (req, res) ->
	fs.readFile filepath, (err, data) ->
		return res.sendStatus(500) if err

		books = null

		try
			books = JSON.parse data
		catch err2
			return res.sendStatus 500

		res.json books

app.listen port
