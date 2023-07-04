import pool from '../../config/connectDB';

const getAvailableDishes = async (req, res) => {
    try {
        const queryToGetDishes = 'SELECT * FROM dish';
        const dishes = await pool.execute(queryToGetDishes)
        res.send({ dishes: dishes[0] })
        res.end()
    } catch (err) {
        console.log(err);
    }
}

module.exports = {
    getAvailableDishes
}