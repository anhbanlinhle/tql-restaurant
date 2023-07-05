import pool from '../../../config/connectDB';
import jwt from 'jsonwebtoken'
import { verifyCode } from '../../../model/verifyOAuth'


let authenticate = async (req, res) => {
  try {
    console.log(req.body.code);
    let userInfo = await verifyCode(req.body.code)
    let query = `select * from available_mail where email = ?`
    let result = await pool.execute(query, [userInfo.email])
    if (result[0].length === 0) {
      return res.status(400).send({ message: 'Email has not been registered' })
    }
    else {
      let query = `select id, name, type from user where email = ?`
      let result = await pool.execute(query, [userInfo.email])
      let jwtPayload;
      if (result[0].length === 0) {
        const queryToCreateNewUser = 
            `INSERT INTO user (email, name, avatar, debt, type, phone, ssn) VALUES (?, ?, ?, 0, 0, '123456789', '123456789')`
        await pool.execute(queryToCreateNewUser, [userInfo.email, userInfo.name, userInfo.picture])
        const getIdAndType = await pool.execute(`select id from user where email = ?`, [userInfo.email])
        req.session.userid = getIdAndType[0][0].id
        req.session.email = userInfo.email
        jwtPayload = {
          email: req.session.email,
          id: req.session.userid,
          name: userInfo.name,
          type: getIdAndType.type
        }
      } else {
        await pool.execute(`update user set name = ?, avatar = ? where email = ?`, [userInfo.name, userInfo.picture, userInfo.email])
        req.session.userid = result[0][0].id
        req.session.token = userInfo.token
        req.session.email = userInfo.email

        jwtPayload = {
          email: req.session.email,
          id: req.session.userid,
          name: result[0][0].name,
          type: result[0][0].type
        }
      }
      const authToken = jwt.sign(jwtPayload, process.env.SECRET, {expiresIn: '20000000000000s'})
      req.session.token = authToken
      
      return res.send({ token: authToken })
    }
  }
  catch (err) {
    console.log(err)
  }
}

module.exports = {
  authenticate
}