require("dotenv").config();

import { verifyToken } from "./verifyToken"
import { authenticate } from "./user/authenticate/authenticate"
import { getAvailableDishes } from "./dishes/dishes"
import { getSpecifiedDish } from "./dishes/specifiedDish"

let homepage = async (req, res) => {
  console.log(
    req.session.id === undefined ? `Session: ` : `\x1b[4mSession\x1b[0m: `,
    req.session.id
  );
  console.log(
    req.session.userid === undefined ? `Userid: ` : `\x1b[4mUserid\x1b[0m: `,
    req.session.userid
  );
  console.log(
    req.session.token === undefined ? `Token: ` : `\x1b[4mToken\x1b[0m: `,
    req.session.token
  );

  return res.send([
    {
      session: req.session.id,
      userid: req.session.userid,
      token: req.session.token,
    },
  ])
}

module.exports = {
  homepage, verifyToken,
  authenticate,
  getAvailableDishes, getSpecifiedDish
}