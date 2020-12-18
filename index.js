const express = require('express')
const app = express();


app.get('/health-check', (req, res) => {
    console.log("Health checked at", (new Date()).toISOString());
    res.send({ message: "Health checked, file syntax fixed", time: (new Date()).toISOString() })
})

app.listen(5000, () => {
    console.log("Process started on port 5000")
})