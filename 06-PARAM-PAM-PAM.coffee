express = require 'express'

app = express()

app.put '/message/:id', (req, res) ->
	{ id } = req.params

	s = require 'crypto'
		.createHash 'sha1'
		.update "#{new Date().toDateString()}#{id}"
		.digest 'hex'

	res.send s

app.listen process.argv[2]
