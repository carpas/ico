require! {
	express
	path
}

port = process.env.PORT or 3000
app = express()


app
	..use express.static \#__dirname/app/dist
	
	..get \/, (req, res) ->
		res.send "Hello World"
		# res.sendFile \index.html, {root: __dirname `path.join` \app/dist }

	..listen port, do
		console.log "App is listening on port #port"