const express = require('express')
const router = express.Router()
const controller = require('./controller')
const { auth, checkAcceso } = require('../../middlewares')

router.get('/materias_primas', auth, checkAcceso('c'), controller.getLista)
router.post('/materias_primas/getlistaAjax', auth, checkAcceso('c'), controller.getListaAjax)
router.post('/materias_primas/getListaSelectAjax', auth, controller.getListaSelectAjax)
router.post('/materias_primas/alta', auth, checkAcceso('a'), controller.postAlta)
router.post('/materias_primas/getByIdAjax', auth, checkAcceso('c'), controller.getById)
router.post('/materias_primas/modificar', auth, checkAcceso('m'), controller.postModificar)
router.post('/materias_primas/eliminar', auth, checkAcceso('b'), controller.postEliminar)

module.exports = router