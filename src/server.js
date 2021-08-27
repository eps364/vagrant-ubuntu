const http = require('http');

let app = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });

  console.log(req.headers);
  res.end('Hello World!');
});

app.listen(3000);
console.log('Node server running on port 3000');