'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Content extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Content.init({
    display_name: DataTypes.STRING,
    caption: DataTypes.STRING,
    display_picture: DataTypes.STRING,
    display_content: DataTypes.STRING,
    user_id: DataTypes.NUMBER
  }, {
    sequelize,
    modelName: 'Content',
  });
  return Content;
};