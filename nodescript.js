const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello, People this is Node.js');
});

const port = process.env.PORT || 3000;

server.on('error', (error) => {
  console.error('Server error:', error);
});

server.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
