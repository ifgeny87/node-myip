const express = require('express');

const app = express();
app.use((req, res) => {
	const ip = req.headers['x-real-ip'] || req.socket.remoteAddress;
	res
		.writeHead(200, {
			'content-type': 'text/plain',
			'x-request-headers': JSON.stringify(req.headers),
		})
		.end(ip);
});
app.listen(3001);
