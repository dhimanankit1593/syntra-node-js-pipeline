let http = require('http');
http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('Hello World! from Docker Container');
}).listen(8001, '0.0.0.0', () => {
  console.log("Server running on port 8001");
});

