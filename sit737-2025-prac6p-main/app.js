const express = require("express");
const app = express();
const PORT = 8080;

// root endpoint
app.get("/", (_, res) => {
  res.json({ message: "Hello from SIT737 – version 3!" });
});

// health‑check endpoint
app.get("/health", (_, res) => {
  res.status(200).json({ status: "OK" });
});

app.listen(PORT, () =>
  console.log(`Server running on http://localhost:${PORT}`)
);
