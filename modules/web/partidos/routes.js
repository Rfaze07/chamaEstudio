const express = require('express');
const router = express.Router();
const controller = require('./controller');
const { auth, checkAcceso } = require('../../../middlewares');


router.get('/web/partidos', controller.getLista);
router.post('/web/partidos/getLista', controller.getListaAjax);

module.exports = router