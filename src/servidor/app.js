import express from 'express'
import * as user from './model/user.model.js'
const app = express();

app.use(express.json())
app.use(express.static('src/html'));
app.use('/css', express.static('src/css'))
app.use('/img', express.static('img'))
app.use('/js', express.static('src/js'))

app.get('/getAPI', async (req, res) => {
    const result = await user.findAll();
    return res.status(200).json(result);
})

app.post('/teste', async (req, res) => {
    const {nome} = req.body;
    const result = await user.insert(nome);
    return res.status(200).json(result);
})

app.get('/', (req, res) => {
    res.sendFile('index.html', { root: 'src/html' });
    console.log('teste');
});


export default app;