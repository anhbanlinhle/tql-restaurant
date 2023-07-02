import pool from '../../../config/connectDB';
import { verifyCode } from '../../../model/verifyOAuth';


let authenticate = async (req, res) => {
  console.log(req.body.code)
  let userInfo = await verifyCode(req.body.code)
  console.log(userInfo)
  return res.send('ok')
}

module.exports = {
  authenticate
}