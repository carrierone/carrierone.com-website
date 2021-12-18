const express = require('express')
const app = express()
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const login = require('./login')
app.use(login)

if (require.main === module) {
  const port = 3001
  app.listen(port, () => {
    console.log(`API server listening on port ${port}`)
  })
}

module.exports = app