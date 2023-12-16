const db = require('../config/config');

//entidad User por eso con MAYÚSCULA
const User = {};

User.create = (user, result) => {
    const sql = `
        INSERT INTO
            users(
                email,
                name,
                lastname,
                phone,
                image,
                password,
                created_at,
                updated_at
            )
        VALUES(?, ?, ?, ?, ?, ?, ?, ?)
    `;

    db.query(
        sql, [
        user.email,
        user.name,
        user.lastname,
        user.phone,
        user.image,
        user.password,
        new Date(),
        new Date()
    ],
        (err, res) => {
            if (err) {
                console.error('ERROR: ', err)
                result(err, null);
            } else {
                console.log('ID DEL NUEVO USUARIO', res.insertId);
                result(null, res.insertId);
            }
            
        }
    )
}

module.exports = User;
