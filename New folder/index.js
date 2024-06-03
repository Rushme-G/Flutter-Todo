const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');
// const { status } = require('express/lib/response');
const app = express();

app.use(express.json());
app.use(cors());

const categoryRoute = require('./modules/category/router');
const userRoute = require('./modules/user/router');


app.use('/category', categoryRoute);
app.use('/user', userRoute);

app.get('/', (request, response)=>{
    response.send('API is running');
});

app.listen(8000, (req, res) => {
    console.log('Server is running on port 8000');
    mongoose.connect(
        "mongodb+srv://admin:admin@athang.iod8v1b.mongodb.net/?retryWrites=true&w=majority&appName=athang",
    ). then((_)=>{
        console.log('Connected to DB');
    }).catch(err => {
        console.log(err);
    });
});

//mongodb+srv://admin:admin@athang.iod8v1b.mongodb.net/?retryWrites=true&w=majority&appName=athang
