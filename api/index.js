const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hola, mundo!');
});
app.get('/app', (req, res) => {
    res.send('esto es una app!');
});

app.get('/json', (req, res) => {
    const data = { 
        message: 'Hola Mundo!', 
        user: 'John Doe' 
      }
    
    res.setHeader('Content-Type', 'application/json')
    res.json(data)
});

app.listen(3000, () => {
  console.log('El servidor está funcionando en el puerto 3000.');
});