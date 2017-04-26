path    = require 'path'
express = require 'express'

app = express()

[ port, file ] = process.argv[2..]

app.use express.static file ? path.join __dirname, 'public'

app.listen port
