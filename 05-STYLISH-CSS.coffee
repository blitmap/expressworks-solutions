path    = require 'path'
express = require 'express'

[ port, template_dir ] = process.argv[2..]

app = express()

app.use require('stylus').middleware template_dir
app.use express.static template_dir

app.listen port
