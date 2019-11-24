async function main() {
  const cors    = require('cors');
  const express = require('express');
  const app     = express();
  const port    = 3000;

  let hitCount  = 0;

  app.use(cors());

  app.get('/', (req, res) => {
    res.json({
      localAddress:  req.connection.localAddress,
      localPort:     req.connection.localPort,
      remoteAddress: req.connection.remoteAddress,
      remotePort:    req.connection.remotePort,
      originalUrl:   req.originalUrl,
      protocol:      req.protocol,
      hostname:      req.hostname,
      time:          new Date().toISOString(),
      hitCount:      ++hitCount,
      headers:       req.headers,
      env:           process.env,
    });
  });

  await app.listen(port);
  console.log(`Listening on port ${port}.`);
}

main();
