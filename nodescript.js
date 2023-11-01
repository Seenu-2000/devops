const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello, People this is Node.js');
});

const port = process.env.PORT || 1000;

server.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
