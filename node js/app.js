// Import the HTTP module
const http = require('http');

// Define the hostname and port where the server will listen
const hostname = '127.0.0.1'; // Localhost
const port = 3000;            // Port number

// Create an HTTP server that sends a "Hello, World!" response
const server = http.createServer((req, res) => {
  res.statusCode = 200;               // Set status code to 200 (OK)
  res.setHeader('Content-Type', 'text/plain'); // Set response type
  res.end('Hello, World!\n , This is my first demo');         // End the response with a message
});

// Make the server listen on the specified hostname and port
server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`); // Log the server URL
});
