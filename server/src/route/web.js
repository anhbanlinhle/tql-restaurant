import express from 'express'
import homeController from '../controller/homeController'
import { verifyToken } from '../controller/verifyToken'
let router = express.Router()

const initWebRoute = (app) => {
  // section - homepage
  router.get('/', homeController.homepage)
  router.post('/login', homeController.authenticate)

  return app.use('/', router)
}

export default initWebRoute