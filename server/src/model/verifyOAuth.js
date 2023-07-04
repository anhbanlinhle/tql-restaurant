import { OAuth2Client } from 'google-auth-library'
require("dotenv").config()
const client = new OAuth2Client(
  {
    clientId: process.env.GOOGLE_CLIENT_ID,
    clientSecret: process.env.GOOGLE_CLIENT_SECRET,
    redirectUri: process.env.GOOGLE_REDIRECT_URI
  }
)

// Call this function to validate OAuth2 authorization code sent from client-side
let verifyCode = async (code) => {
  try {
    let { tokens } = await client.getToken(code)
    client.setCredentials({ access_token: tokens.access_token })
    const userInfo = await client.request({
      url: 'https://www.googleapis.com/oauth2/v3/userinfo'
    })
    return userInfo.data
  } catch (error) {
    console.log(error)
  }
}

module.exports = {
  verifyCode
}