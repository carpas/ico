serveMe = require 'serve-me'
port = 3000

serveMe({
	debug: true
	log: true
	home: './app/dist/index.html'
	directory: './app/dist'
}).start port, =>
	console.log "server listening on port: #{port}"