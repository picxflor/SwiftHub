const usersController = require('../controllers/usersControllers');

module.exports = (app) => {
    //put -- actualizar
    app.post('/api/users/create', usersController.register);
}