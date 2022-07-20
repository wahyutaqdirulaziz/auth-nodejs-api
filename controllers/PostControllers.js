const {
   Content
  } = require('../models');
  
  class PostControllers {
    static create = async (req, res) => {
      const {
       
        caption,
        display_picture,
        display_content
      } = req.body;
      const {
        users_id,
        username
      } = req.user;
     console.log(users_id);
  
      await Content.create({
        display_name : username,
        caption,
        display_picture,
        display_content,
        user_id : users_id
    }).then(result => {
      let data = {
        id: result.id,
        display_name: result.display_name,
        caption: result.caption,
        display_picture: result.display_picture,
        display_content: result.display_content,
        user_id : result.user_id,
        updatedAt: result.updatedAt,
        createdAt: result.createdAt
      }
      return res.status(201).json({
          result : 1,
        content: data
      })
    }).catch(error => {
      const err = error.errors
      const errorList = err.map(d => {
        let obj = {}
        obj[d.path] = d.message
        return obj;
      })
      return res.status(400).json({
          result:0,
        status: 'error',
        message: errorList
      });
    });
    }
  
    static getAll = async (req, res) => {
      try {
        let data = await Content.findAll()
        return res.status(200).json({
            result:1,
          content: data
        })
      } catch (error) {
        return res.status(400).json({
            result:0,
          status: 'error',
          message: error.stack
        })
      }
    }


    static getByuserAll = async (req, res) => {
      const {
        users_id,
      } = req.user;
      try {
        let data = await Content.findAll({where:{
          user_id:users_id
        }})
        return res.status(200).json({
            result:1,
          content: data
        })
      } catch (error) {
        return res.status(400).json({
            result:0,
          status: 'error',
          message: error.stack
        })
      }
    }
  
    static update = async (req, res) => {
      const id = req.body.id;
      const {
            caption,
            display_picture,
            display_content,
      } = req.body;
  
      //return console.log(req.user.role);
      await Content.findOne({
        where: {
          id
        }
      }).then(async (result) => {
        //return console.log();
        if (result == null) {
          return res.status(404).json({
            status: 'error',
            message: 'Data not found'
          })
        } else {
          await Content.update({
              caption,
              display_picture,
              display_content,
          }, {
            where: {
              id
            }
          }).then(async () => {
            await Content.findOne({
              where: {
                id
              }
            }).then((rsl) => {
              return res.status(200).json({
                  result:1,
                content: rsl
              })
            }).catch((err) => {
              return res.status(500).json({
                  result:0,
                status: 'error',
                message: err.message
              })
            })
          })
        }
      }).catch(error => {
        return res.status(500).json({
          result:0,
          status: 'error',
          message: error.stack
        })
      })
    }

    static tesjson= async (req,res) =>{
      const {
        users_id
      } = req.user;

      console.log(users_id);
    }
  
    static destroy = async (req, res) => {
      try {
        const content = await Content.findOne({
          where: {
            id: req.body.id
          }
        });
        if (!content) res.status(404).json({
          result:0,
          status: "error",
          message: "Data not found!"
        });
        Content.destroy({where: {
          id: req.body.id
        }}).then((result) => { return res.status(200).json({ result:1,message: 'Content has been successfully deleted' }) });
       
      } catch (error) {
        console.error(error);
      }
  
    }
  }
  
  module.exports = PostControllers;