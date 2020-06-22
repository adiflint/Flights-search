require("dotenv").config();
var express = require("express");
var router = express.Router();
const DButils = require("../Utils/DButils");

//create new onw with all db operations   
const bcrypt = require("bcrypt");


router.post("/Register", async (req, res, next) => {
    try {
     
      const users = await DButils.execQuery("SELECT username FROM users");
  
      if (users.find((x) => x.username === req.body.username))
        throw { status: 409, message: "Username taken" };
  
      // add the new username
      let hash_password = bcrypt.hashSync(
        req.body.password,
        parseInt(process.env.bcrypt_saltRounds)
      );
      await DButils.execQuery(
        `INSERT INTO users VALUES (default, '${req.body.username}', '${hash_password}', '${req.body.firstName}'
        ,'${req.body.lastName}', '${req.body.picture}')`
      );
      res.status(201).send({ message: "user created", success: true });
    } catch (error) {
      next(error);
    }
  });
  
  router.post("/Login", async (req, res, next) => {
    try {
      // check that username exists
      const users = await DButils.execQuery("SELECT username FROM users");
      if (!users.find((x) => x.username === req.body.username))
        throw { status: 401, message: "Username or Password incorrect" };
  
      // check that the password is correct
      const user = (
        await DButils.execQuery(
          `SELECT * FROM users WHERE username = '${req.body.username}'`
        )
      )[0];
  
      if (!bcrypt.compareSync(req.body.password, user.password)) {
        throw { status: 401, message: "Username or Password incorrect" };
      }
  
      // Set cookie
      req.session.user_id = user.user_id;
      // req.session.save();
      // res.cookie(session_options.cookieName, user.user_id, cookies_options);
  
      // return cookie
      let user_firstName = await DButils.user_firstName(user.user_id);
      user_firstName = user_firstName.first_name;
      let user_url = await DButils.user_url(user.user_id);
      user_url = user_url.picture_url;
      res.status(200).send({user_firstName ,user_url});
    } catch (error) {
      next(error);
    }
  });
  
  router.post("/Logout", function (req, res) {
    req.session.reset(); // reset the session info --> send cookie when  req.session == undefined!!
    res.send({ success: true, message: "logout succeeded" });
  });
  
  module.exports = router;
