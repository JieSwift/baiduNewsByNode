var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
	// res.send('respond with a resource');
	res.sendfile("./public/web/home.html");
});

module.exports = router;

