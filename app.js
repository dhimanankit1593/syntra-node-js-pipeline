let http = require('http');
http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('Hello World! from Jenkins Pipeline');
}).listen(8002, '0.0.0.0', () => {
  console.log("Server running on port 8002");
});
