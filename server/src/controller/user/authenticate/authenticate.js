import pool from '../../../config/connectDB';
import { verifyCode } from '../../../model/verifyOAuth';


let authenticate = async (req, res) => {
  try {
    let userInfo = await verifyCode(req.body.code)
    let query = `select * from available_mail where email = ?`
    let result = await pool.execute(query, [userInfo.email])
    if (result[0].length === 0) {;
      return res.status(400).send('Email has not been registered')
    }
    else {
      let query = `select * from user where email = ?`
      let result = await pool.execute(query, [userInfo.email])
      req.session.userid = result[0][0].id
      req.session.token = userInfo.token
      return res.send(userInfo)
    }
  }
  catch (err) {
    console.log(err)
  }
}

module.exports = {
  authenticate
}