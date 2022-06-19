const http = require("http");

// Create a local server to receive data from
const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "application/json" });
  res.end(
    JSON.stringify({
      data: "Hello World!",
    })
  );
});

// 可以在不是root情况下开启 80 端口
server.listen(80, async () => {
  const details = server.address();
  console.log("server start!");
  console.log(details);
});
