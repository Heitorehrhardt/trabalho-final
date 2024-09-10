const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

class produtos extends Model {}

produtos.init({
    id:{
        type:DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nome:{
        type:DataTypes.STRING
    },
    descricao:{
    type:DataTypes.TEXT
    },
    imagem:{
    type:DataTypes.TEXT
    },
    preco:{
        type:DataTypes.DECIMAL
    },
    categoria:{
        type:DataTypes.STRING
    }

},{
    sequelize,
    modelName:'produtos',
    timestamps:false
}
)
module.exports=produtos