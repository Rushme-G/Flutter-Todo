const express = require('express');
const router = express.Router();
const controller = require('./controller')
const verifyToken = require('../user/middleware');

router.get('', controller.getAll);
//category: api name, id: variable
router.get('/:id', controller.getbyId);

router.post('', verifyToken, controller.create);

router.put('/:id',controller.update);

router.delete('/:id', controller.remove);

module.exports = router;
