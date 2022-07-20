const express       = require('express');
const router        = express.Router();
const postHandler   = require('../controllers/PostControllers');
const verifytoken   = require('../middleware/verifiytoken');


router.get('/getall',verifytoken,postHandler.getAll);
router.get('/getbyuser',verifytoken,postHandler.getByuserAll);
router.post('/create',verifytoken ,postHandler.create);
router.post('/update',verifytoken ,postHandler.update);
router.post('/delete',verifytoken, postHandler.destroy);

module.exports = router;