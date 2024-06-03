const categoryConstant = require('../../utils/constants/category.constants');
const schema = require('./schema');

const getAll = async(request, response)=>{
    const data = await schema.find({});

    response.send({
        // data: categoryConstant.CATEGORY,
        data: data,
        status: 200,
        message: "Data retrieved"
    });
}

const getbyId = async(request, response)=>{
    // const data = categoryConstant.CATEGORY.find(v => v.id === +request.params.id);
    try{
        // const data = await schema.findById(request.params.id);
        const data = await schema.findById(request.params.id).populate('createdBy','email _id');
        response.send({
            data: data,
            status: 200,
            message: "Data retrieved"
        });
    }    
    // data: categoryConstant.CATEGORY.filter(v=> v.id === +request.params.id),
    // data: categoryConstant.CATEGORY.filter(v=> v.id === parseInt(request.params.id)),
    // if (!data) {
    catch(e){
        response.status(404).send({
            data: null,
            message: 'Data not found',
            status: 404
        });
    }
}

const create = async(request, response)=>{
    const userId = request.user.id;
    // insert into table 
    const data = await schema.create({
        title: request.body.title,
        createdBy: userId
    });
    response.send({
        // dtat: request.body,
        message: 'Data created',
        status: 201
    });
}
const update = async(request, response)=>{
    await schema.findByIdAndUpdate( request.params.id, {
        // title: request.body.title
        title: request.body.title
    })
    response.send({
        // params: request.params.id,
        // data: request.body,
        message: 'Data updated',
        status: 200
    });
}
const remove = async(request, response)=>{
    await schema.findByIdAndDelete(request.params.id);
    response.send({
        // params: request.params.id,
        message: 'Data deleted',
        status:200
    });
}

module.exports = {
    getAll,
    getbyId,
    create,
    update,
    remove
}