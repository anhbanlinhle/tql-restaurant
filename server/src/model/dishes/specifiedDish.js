import pool from '../../config/connectDB';

const getSpecifiedDish = async (req, res) => {
    try {
        const queryToGetDish = `SELECT d.name, d.type, d.img, GROUP_CONCAT(i.name) AS ingredients
                        FROM dish d JOIN cooking c ON d.id = c.dish JOIN ingredient i ON i.name = c.ingredient 
                        WHERE d.id = ? 
                        GROUP BY d.name`
        const dish = await pool.execute(queryToGetDish, [req.params.id]);
        const ingredients = dish[0][0].ingredients.split(',')
        res.send(
            { 
                name: dish[0][0].name,
                type: dish[0][0].type, 
                img: dish[0][0].img, 
                ingredients: ingredients
            }
        );
        res.end();
    } catch (err) {
        console.log(err);
    }
}

module.exports = {
    getSpecifiedDish
}