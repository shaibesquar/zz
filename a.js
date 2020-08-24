const express = require('express')
const app = express()
const port = 3000

app.get('/event', (req, res) => {
  var ob = {
    "eventid": 45345,
    "eventName": "Birabiro",
    "eventDescription": "A diplo concert",
    "startDate": "Jan-08-20",
    "endDate": "Jan-08-20",
    "startTime": "08:30:00",
    "endTime": "12:00:00",
    "eventStatus": "SCHEDULED",
    "tickStat": "OPEN",
    "idHall": 34,
    "idVenue": 56
  }
  res.send(ob)
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})