import pool from '../../config/connectDB';

const getAvailableDishes = async (req, res) => {
    try {
        let dishes, queryToGetDishes
        if(req.body.category === undefined) {
            queryToGetDishes = 'SELECT * FROM dish';
            dishes = await pool.execute(queryToGetDishes);
        } else {
            const cate = req.body.category.replace('-', '_');
            queryToGetDishes = `SELECT * FROM dish WHERE type = ?`
            dishes = await pool.execute(queryToGetDishes, [cate])
        }
        res.send({ dishes: dishes[0] });
        res.end();
    } catch (err) {
        console.log(err);
    }
}

module.exports = {
    getAvailableDishes
}