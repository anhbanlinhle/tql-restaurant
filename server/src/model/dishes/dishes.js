import pool from '../../config/connectDB';

const getAvailableDishes = async (req, res) => {
    try {
        let dishes, queryToGetDishes
        if(req.query.category === undefined && req.query.name === undefined) {
            queryToGetDishes = 'SELECT * FROM dish';
            dishes = await pool.execute(queryToGetDishes);
        } else {
            queryToGetDishes = `SELECT * FROM dish WHERE`
            const paramArray = [];
            let name, cate;
            if (req.query.category !== undefined) {
                cate = req.query.category.replace('-', '_')
                queryToGetDishes += ` type = ? AND`
                paramArray.push(cate)
            }
            if (req.query.name !== undefined) {
                name = req.query.name;
                queryToGetDishes += ` name LIKE ?`
                paramArray.push('%' + name + '%')
            }
            const indexOfANDAtLast = queryToGetDishes.search("AND");
            if (indexOfANDAtLast == queryToGetDishes.length - 3) {
                queryToGetDishes = queryToGetDishes.slice(0, indexOfANDAtLast)
            }
            dishes = await pool.execute(queryToGetDishes, paramArray)
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