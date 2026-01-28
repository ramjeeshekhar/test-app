const http = require("http");

const PORT = process.env.PORT || 3000;

http.createServer((req, res) => {
    res.end("Hello from Coolify 🚀");
}).listen(PORT, "0.0.0.0", () => {
    console.log(`Server running on port ${PORT}`);
});

