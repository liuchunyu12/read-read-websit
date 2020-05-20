const express=require('express');
const dsRouter=require('./router/user.js');
const bodyParser=require('body-parser');
const session=require("express-session");//引入session模块 保存登录凭证
const cors=require("cors");//跨域
var app=express();
//配置跨域模块
app.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}));
app.use(bodyParser.urlencoded({
	extended:false
}));
app.use(express.static('public'));
//6：配置session对象
app.use(session({
    name:'user_key',
    secret:"128位安全字符串",//加密条件
    resave:true,//每次请求更新数据
    saveUninitialized:true,//保存初始化数据
}));
app.use("/ds",dsRouter);
app.listen(8080);
console.log("服务器已启动...8080");