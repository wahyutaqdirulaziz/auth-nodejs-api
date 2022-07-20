const express       = require('express');
const app           = express();
const port          = process.env.PORT || 3000;
const user          = require('./routes/user');
const content          = require('./routes/posting');


app.use(express.json());
app.use(express.urlencoded({
  extended: true
}));

app.use('/api/users', user);
app.use('/api/main', content);
app.listen(port, () => {
  console.log(`Running on port ${port}`);
});