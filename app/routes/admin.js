'use strict';
var express = require('express');
var router = express.Router();

/* GET admin listing. */
router.get('/', function(req, res, next) {
	res.sendfile("./public/web/home.html");
});

module.exports = router;

