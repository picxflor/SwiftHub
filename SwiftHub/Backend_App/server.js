const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);

const logger=require('morgan');
const cors = require('cors');

//IMPORTAMOS LAS RUTAS
const usersRoutes = require('./routes/usersRoutes');

//definimos número de puerto, que use el puerto por defaul o que use el 3000
const port = process.env.PORT || 3000;

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({
    extended:true
}));

app.use(cors());
app.disable('x-powered.by');

app.set(port, 'port');
server.listen(3000, '192.168.0.21' || 'localhost', function(){
    console.log("App de Node.js " + process.pid + " iniciado...");
});

usersRoutes(app);

//CREAMOS RUTAS
app.get('/', (req, res) =>{
    res.send('Ruta inicial del BackEnd');
});

//ruta de testeto
app.get('/test', (req, res) =>{
    res.send('Ruta de testeo');
});

//MANEJO DE ERRORES
app.use((err, req, res, next) =>{
    console.log(err);
    res.status(err.status || 500).send(err.stack);
});