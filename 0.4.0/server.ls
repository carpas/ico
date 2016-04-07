require! {
	express
	path
}

port = process.env.PORT or 8000
app = express!


app
	..use express.static __dirname + \/app/dist
	
	..get \/, (req, res) ->
		res.sendFile \index.html

	..listen port, do
		console.log "App is listening on port #port"