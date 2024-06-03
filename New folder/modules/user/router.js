const express = require('express');
const router = express.Router();
const controller = require('./controller')
const verifyToken =  require('./middleware')

// router.get('', controller.getAll);
// //category: api name, id: variable
// router.get('/:id', controller.getbyId);
// router.post('', controller.create);
// router.put('/:id',controller.update);
// router.delete('/:id', controller.remove);

router.get('', verifyToken, controller.getAll); 
router.post('/login', controller.loginUser); 
router.get('/:id', verifyToken, controller.getById); 
router.post('',controller.create);
router.put('/:id',controller.update);
router.delete('/:id',controller.remove);

odule.exports = router;
