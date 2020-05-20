const express=require('express');
const pool=require("../pool.js");
var router=express.Router();
//注册
router.post("/v1/reg",(req,res)=>{
	var $uname=req.body.uname;
	var $upwd=req.body.upwd;
	var $email=req.body.email;
	var $phone=req.body.phone;
	var $gender=req.body.gender;
    var sql="insert into ds_user(uname,upwd,email,phone,gender) values(?,?,?,?,?)";
	pool.query(sql,[$uname,$upwd,$email,$phone,$gender],(err,result)=>{
		if(err)throw err;
		if(result.affectedRows>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});

});
//验证用户名在数据库中是否已存在
router.get("/v1/check_uname/:uname",(req,res)=>{
	var $uname=req.params.uname;
	var sql="select * from ds_user where uname=?";
	pool.query(sql,[$uname],(err,result)=>{
		if(err)throw err;
		if(result.length>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
});
//登录
router.get("/v1/login/:uname&:upwd",(req,res)=>{
	var $uname=req.params.uname;
	var $upwd=req.params.upwd;
	var sql="select uid from ds_user where uname=? and upwd=?";
	pool.query(sql,[$uname,$upwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			req.session.uid=result[0].uid;//将当前登录用户的id保存到session对象中
			req.session.uname=$uname;//将当前登录用户的账号保存到session对象中
			console.log(req.session.uname);
			res.send("1");
		}else{
			res.send("0");
		}
	});
})

//搜索框 根据书名搜索
router.post("/v1/search-name",(req,res)=>{
	//1:获取用户登录凭证uid
	var uid=req.session.uid;
	console.log(uid);
	var $tname=req.body.tname;
	var $ID=req.body.ID;
	$ID=parseInt($ID);
	console.log($tname+'~~~'+$ID);
	var sql="select ds_tushu.*,ds_zj.* from ds_tushu,ds_zj where ds_zj.tid=ds_tushu.tid and tname like ? group by ds_tushu.tid limit ?,10";
	pool.query(sql,['%'+$tname+'%',$ID],(err,result)=>{
		if(err)throw err;
		console.log(result);
		//2:没有uid表示此用户未登录 发送请登录信息
	if(uid){
		res.send({code:1,msg:"登录后",result:result});
	}else if(!uid){
		res.send({code:0,msg:"登录前",result:result});
	}
	});
});

//总图书数量
router.get('/v1/countb/:tname',(req,res)=>{
	var tname=req.params.tname;
	var sql="select count(*) as count from ds_tushu where tname like ?";
	pool.query(sql,['%'+tname+'%'],(err,result)=>{
		if(err)throw err;
		res.send(result);
	});
});

//书籍详情页面
router.post("/v1/detail",(req,res)=>{
	var ID=req.body.ID;
	
	//1:获取用户登录凭证uid
	var uid=req.session.uid;
	console.log(uid);
	var sql="select * from ds_tushu,ds_zj where ds_zj.tid=ds_tushu.tid and ds_tushu.ID=?";
	pool.query(sql,[ID],(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(uid){
			res.send({code:1,msg:"登录后",result:result});
		}else if(!uid){
			res.send({code:0,msg:"未登录",result:result});
		}
	})
})

//书库书籍页面男频
router.get('/v1/shukuNa',(req,res)=>{
	//1:获取用户登录凭证uid
	var uid=req.session.uid;
	console.log(uid);
	var sql="select * from ds_tushu where tKind='奇幻玄幻' or tKind='武侠仙侠' or tKind='历史军事' or tKind='都市娱乐' or tKind='竞技同人' or tKind='科幻游戏' or tKind='悬疑灵异' or tKind='二次元'";
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(uid){
			res.send({code:1,msg:"登录后",result:result});
			return;
		}else if(!uid){
			res.send({code:0,msg:"未登录",result:result});
			return;
		}
	})
})
//书库书籍页面女频
router.get('/v1/shukuNv',(req,res)=>{
	//1:获取用户登录凭证uid
	var uid=req.session.uid;
	console.log(uid);
	var sql="select * from ds_tushu where tKind <> '奇幻玄幻' and tKind <> '武侠仙侠' and tKind <> '历史军事' and tKind <> '都市娱乐' and tKind <> '竞技同人' and tKind <> '科幻游戏' and tKind <> '悬疑灵异' and tKind <> '二次元'";
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(uid){
			res.send({code:1,msg:"登录后",result:result});
			return;
		}else if(!uid){
			res.send({code:0,msg:"未登录",result:result});
			return;
		}
	})
})

//完本书籍页面男频
router.get('/v1/wanbenNa',(req,res)=>{
	//1:获取用户登录凭证uid
	var uid=req.session.uid;
	console.log(uid);
	var sql="select * from ds_tushu where tStatus='已完结' and tKname <> 'NULL'";
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(uid){
			res.send({code:1,msg:"登录后",result:result});
			return;
		}else if(!uid){
			res.send({code:0,msg:"未登录",result:result});
			return;
		}
	})
})
//完本书籍页面女频
router.get('/v1/wanbenNv',(req,res)=>{
	//1:获取用户登录凭证uid
	var uid=req.session.uid;
	console.log(uid);
	var sql="select * from ds_tushu where tStatus='已完结' and tKname='NULL'";
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(uid){
			res.send({code:1,msg:"登录后",result:result});
			return;
		}else if(!uid){
			res.send({code:0,msg:"未登录",result:result});
			return;
		}
	})
})

//书籍类型页面
router.post("/v1/fenlei",(req,res)=>{
	var tKname=req.body.tKname;
	//1:获取用户登录凭证uid
	var uid=req.session.uid;
	console.log(uid);
	var sql="select * from ds_tushu where tKname=?";
	pool.query(sql,tKname,(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(uid){
			res.send({code:1,msg:"登录后",result:result});
		}else if(!uid){
			res.send({code:0,msg:"未登录",result:result});
		}
	})
})

//章节目录页面
router.post("/v1/mulu",(req,res)=>{
	var tid=req.body.tid;
	//1:获取用户登录凭证uid
	var uid=req.session.uid;
	var sql="select ds_zj.zid,ds_zj.id,ds_tushu.ID,ds_tushu.tKind,ds_tushu.tKname,ds_tushu.ename,ds_tushu.tname,ds_tushu.author,ds_zj.zname from ds_tushu,ds_zj where ds_tushu.tid=ds_zj.tid and ds_tushu.tid=? group by ds_zj.zid order by ds_tushu.tid";
	pool.query(sql,tid,(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(uid){
			res.send({code:1,msg:"登录后",result:result});
		}else if(!uid){
			res.send({code:0,msg:"登录前",result:result});
		}
	})
})

//章节内容页面
router.get('/v1/zj',(req,res)=>{
	var uid=req.session.uid;//获取保存在session里面的uid登录信息
	var sql="select ds_zj.zid,zname,tKname,ename,ds_tushu.tid,title1,title2,title3,tKind,tname from ds_zj,ds_book,ds_tushu where ds_zj.tid=ds_tushu.tid and ds_zj.zid=ds_book.zid group by ds_zj.zid order by ds_tushu.tid";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		console.log(result);
		if(uid){//如果用户登录了
			res.send({code:1,msg:'登录后',result:result});
		}else if(!uid){//如果用户没有登录
			res.send({code:0,msg:'登录前',result:result});
		}
	})
})

//每个书籍有几个章节
router.post('/v1/count',(req,res)=>{
	var ID=req.body.ID;
	var sql='select count(ds_zj.id) as count from ds_tushu,ds_zj where ds_tushu.tid=ds_zj.tid and ds_tushu.ID=? ';
	pool.query(sql,ID,(err,result)=>{
		if(err) throw err;
		console.log(result);
		res.send(result);
	})
})

//将图书添加至个人书架
router.post("/v1/addcart",(req,res)=>{
	//1:获取用户登录凭证uid
	var uid=req.session.uid;
	//获取search页面传递数据
	var tid=req.body.tid;
	var tname=req.body.tname;
	var author=req.body.author;
	var tKind=req.body.tKind;
	var tStatus=req.body.tStatus;
	var ID=req.body.ID;
	var zjid=req.body.zjid;
	console.log(tid+"_"+tname+"_"+author+"_"+tKind+"_"+tStatus+'_'+ID+'_'+zjid);
	console.log('tid的类型：',typeof tid);
	console.log('uid的类型：',typeof uid);
	tid=parseInt(tid);
	//创建sql语句 查询当前用户是否添加过此图书到个人书架
	var sql="select sid from ds_shujia where uid=? and tid=?";
	//执行sql语句
	pool.query(sql,[uid,tid],(err,result)=>{
		//在回调函数（钩子函数）
		if(err) throw err;
		console.log('查询个人书架表中是否有这条记录：',result);
		//获取查询结果[判断是否在书架中]
		if(result.length==0){
			//如果不在书架中 创建insert into
			var sql1=`insert into ds_shujia values(null,${tid},'${tKind}','${tname}','${author}','${tStatus}',${uid},${ID},${zjid})`;
			//执行sql
			//返回结果
			pool.query(sql1,[tid,tKind,tname,author,tStatus,uid,ID,zjid],(err,result)=>{
				if(err) throw err;
				console.log('是否添加成功数据到个人书架表中：',result);
				res.send({code:1,msg:"添加成功"});
			})
		}else{
			//如果在书架中
			res.send({code:2,msg:"已在书架",res:result});
			return;
		}
	})

})
//个人书架
router.get("/v1/cart",(req,res)=>{
	//1:获取用户登录凭证uid
	var uid=req.session.uid;
	console.log(uid);
	var sql="select sid,tKind,tname,author,tStatus,ID,zjid from ds_shujia where uid=?";
	pool.query(sql,uid,(err,result)=>{
		if(err) throw err;
		console.log(result);
		res.send(result);
	})
})
// 删除书架书籍
router.post("/v1/delcart",(req,res)=>{
	var sid=req.body.sid;
	var sql="delete from ds_shujia where sid=?";
	pool.query(sql,[sid],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			res.send("1");
		}else{
			res.send("0");
		}
	})
})

//用户退出登录
router.get("/v1/quit",(req,res)=>{
	req.session.destroy(function(err){
		if(err){
			console.log("退出失败！");
			res.send("-1");//退出失败
			return;
		}
		//清楚登录的cookie
		res.clearCookie('user_key');
		res.send("1");
	})
})

//根据用户名获取登录用户的所有信息
router.get('/v1/un',(req,res)=>{
	var uname=req.session.uname;
	console.log(uname);
	var sql="select * from ds_user where uname=?";
	pool.query(sql,[uname],(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(result.length>0){
			res.send(result[0]);
		}else{
			res.send('0');
		}
	})
});

//后台管理员登录
router.get("/v1/bclogin/:bcname&:bcpwd",(req,res)=>{
	var $bcname=req.params.bcname;
	var $bcpwd=req.params.bcpwd;
	var sql="select bcid from back_user where bcname=? and bcpwd=?";
	pool.query(sql,[$bcname,$bcpwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
});

//后台管理员管理书籍根据书名查询到的表
router.get('/v1/chabctable/:tname',(req,res)=>{
	var $tname=req.params.tname;
	var sql='select ds_zj.id,ds_tushu.tid,ds_tushu.tname,ds_tushu.author,ds_tushu.tnumber,ds_tushu.timage,ds_tushu.tStatus,ds_tushu.description,ds_tushu.tCount,ds_tushu.tlabel,ds_tushu.tKind,ds_tushu.ename,ds_tushu.tKname,ds_zj.zid,ds_zj.zname,ds_book.bid,ds_book.title1,ds_book.title2,ds_book.title3 from ds_zj,ds_tushu,ds_book where ds_book.zid=ds_zj.zid and ds_zj.tid=ds_tushu.tid and ds_tushu.tname like ? group by ds_zj.zid order by ds_zj.tid';
	pool.query(sql,['%'+$tname+'%'],(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(result.length>0){
			res.send({code:1,msg:'查询到了书籍数据！查询成功！',result:result});
		}else{
			res.send({code:0,msg:'没查询到书籍数据！查询失败！'})
		}
		
	})
});

//后台管理员管理书籍的表
router.get('/v1/bctable',(req,res)=>{
	var sql='select ds_zj.id,ds_tushu.tid,ds_tushu.tname,ds_tushu.author,ds_tushu.tnumber,ds_tushu.timage,ds_tushu.tStatus,ds_tushu.description,ds_tushu.tCount,ds_tushu.tlabel,ds_tushu.tKind,ds_tushu.ename,ds_tushu.tKname,ds_zj.zid,ds_zj.zname,ds_book.bid,ds_book.title1,ds_book.title2,ds_book.title3 from ds_zj,ds_tushu,ds_book where ds_book.zid=ds_zj.zid and ds_zj.tid=ds_tushu.tid  group by ds_zj.zid order by ds_zj.tid';
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(result.length>0){
			res.send({code:1,msg:'查询到了书籍数据！查询成功！',result:result});
		}else{
			res.send({code:0,msg:'没查询到书籍数据！查询失败！'})
		}
		
	})
});

//后台管理员添加书籍
router.post('/v1/bcaddbook',(req,res)=>{
	var tid=req.body.tid;
	var zid=req.body.zid;
	var bid=req.body.bid;
	var tname=req.body.tname;
	var author=req.body.author;
	var tnumber=req.body.tnumber;
	var timage=req.body.timage;
	var tStatus=req.body.tStatus;
	var description=req.body.description;
	var tCount=req.body.tCount;
	var tlabel=req.body.tlabel;
	var tKind=req.body.tKind;
	var tKname=req.body.tKname;
	var zname=req.body.zname;
	var ename=req.body.ename;
	var title1=req.body.title1;
	var title2=req.body.title2;
	var title3=req.body.title3;

	var sql='select tname from ds_tushu where tid=?';//查询ds_tushu表中是否有tname这条数据
	pool.query(sql,tid,(err,result)=>{
		if(err) throw err;
		if(result.length==0){//如果表中没有名为tname的数据，则在ds_tushu表的末尾新增一条关于书籍详情的数据
			var sql1='insert into ds_tushu values(null,?,?,?,?,?,?,?,?,?,?,?,?);';
			pool.query(sql1,[tid,tname,author,tnumber,timage,tStatus,description,tCount,tlabel,tKind,ename,tKname],(err,result)=>{
				if(err)throw err;
				console.log(result);
				if(result.affectedRows<=0){	//新增数据失败，返回0
					res.send('0');
				}else{//如果新增成功，则在ds_zj表中添加一条关于书籍章节信息的数据
					var sql2='insert into ds_zj(id,zid,zname,tid) values(null,?,?,?);';
					pool.query(sql2,[zid,zname,tid],(err,result)=>{
						if(err)throw err;
						if(result.affectedRows>0){//如果添加成功，再在ds_book表中添加章节内容的数据
							var sql3='insert into ds_book(id,bid,title1,title2,title3,tid,zid) values(null,?,?,?,?,?,?);';
							pool.query(sql3,[bid,title1,title2,title3,tid,zid],(err,result)=>{
								if(err) throw err;
								if(result.affectedRows>0){//如果添加数据成功，返回1
									res.send('1');
								}else{//如果在ds_book中新增数据失败，返回0
									res.send('0');
								}
							})
						}else{//如果在ds_zj中新增数据操作失败，返回0
							res.send('0');
						}
					})

				}
			})
		}else{//如果表中有名为tname的数据，则在ds_zj表中添加一条关于书籍章节信息的数据
			var sql4='insert into ds_zj(id,zid,zname,tid) values(null,?,?,?);';
			pool.query(sql4,[zid,zname,tid],(err,result)=>{
				if(err)throw err;
				if(result.affectedRows>0){//如果添加成功，再在ds_book表中添加章节内容的数据
					var sql5='insert into ds_book(id,bid,title1,title2,title3,tid,zid) values(null,?,?,?,?,?,?);';
					pool.query(sql5,[bid,title1,title2,title3,tid,zid],(err,result)=>{
						if(err) throw err;
						if(result.affectedRows>0){//如果添加成功，返回1
							res.send('1');
						}else{//如果添加数据失败了，返回0
							res.send('0');
						}
					})
				}else{//如果添加数据到ds_zj中失败了，返回0
					res.send('0');
				}
			})
		}	
	})
})

//后台管理员修改书籍信息时模态框中的文本框呈现该条原本的数据
router.post('/v1/bccxup',(req,res)=>{
	var zid=req.body.zid;//获取ds_zj表中的zid作为查询条件
	//根据zid查询条件，多表查询，查询出想要的数据，并返回给前端的修改按钮中的模态框中
	var sql='select ds_zj.tid,tname,author,tnumber,timage,tStatus,description,tCount,tlabel,tKind,ename,tKname,zname,title1,title2,title3 from ds_zj,ds_tushu,ds_book where ds_book.zid=ds_zj.zid and ds_tushu.tid=ds_zj.tid and ds_zj.zid=? group by ds_zj.zid';
	pool.query(sql,zid,(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(result.length>0){//如果查询成功，有结果
			res.send({code:1,msg:'加载书籍数据成功！',result:result});
		}else{//如果查询失败
			res.send({code:0,msg:'加载书籍数据失败！'});
		}
	})
})

//后台管理员修改书籍
router.post('/v1/bcupbook',(req,res)=>{
	var tid=req.body.tid;
	var tname=req.body.tname;
	var author=req.body.author;
	var tnumber=req.body.tnumber;
	var timage=req.body.timage;
	var tStatus=req.body.tStatus;
	var description=req.body.description;
	var tCount=req.body.tCount;
	var tlabel=req.body.tlabel;
	var tKind=req.body.tKind;
	var tKname=req.body.tKname;
	var zname=req.body.zname;
	var ename=req.body.ename;
	var title1=req.body.title1;
	var title2=req.body.title2;
	var title3=req.body.title3;
	var zid=req.body.zid;//获取ds_zid的章节信息编号
	// console.log('章节数：',zid);
	var bid=req.body.bid;//获取ds_book的章节内容信息编号

	var sql='update ds_tushu,ds_zj,ds_book set ds_tushu.tid=?,ds_tushu.tname=?,ds_tushu.author=?,ds_tushu.tnumber=?,ds_tushu.timage=?,ds_tushu.tStatus=?,ds_tushu.description=?,ds_tushu.tCount=?,ds_tushu.tlabel=?,ds_tushu.tKind=?,ds_tushu.ename=?,ds_tushu.tKname=?,ds_zj.zname=?,ds_book.title1=?,ds_book.title2=?,ds_book.title3=? where ds_book.zid=ds_zj.zid and ds_zj.tid=ds_tushu.tid and ds_zj.zid=?';
	pool.query(sql,[tid,tname,author,tnumber,timage,tStatus,description,tCount,tlabel,tKind,ename,tKname,zname,title1,title2,title3,zid],(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(result.changedRows>0){
			res.send('1');
		}else{
			res.send('0');
		}
	});

	//根据ds_zj表中的章节信息编号作为标识，来更新ds_tushu表中的数据对应zid编号的数据
	// var sql1='update ds_tushu,ds_zj set ds_tushu.tid=?,tname=?,author=?,tnumber=?,timage=?,tStatus=?,description=?,tCount=?,tlabel=?,tKind=?,tXq=? where ds_tushu.tid=ds_zj.tid and ds_zj.zid=? ';
	// pool.query(sql1,[tid,tname,author,tnumber,timage,tStatus,description,tCount,tlabel,tKind,tXq,zid],(err,result)=>{
	// 	if(err) throw err;
	// 	console.log('update ds_tushu:',result);
	// 	if(result.affectedRows>0){//如果更新成功，则继续更新章节信息表中的数据
	// 		var sql2='update ds_zj set tid=?,zname=?,ename=? where ds_zj.zid=? ';
	// 		pool.query(sql2,[tid,zname,ename,zid],(err,result)=>{
	// 				if(err)throw err;
	// 				console.log('update ds_zj:',result);
	// 				if(result.affectedRows>0){//如果更新成功，则继续更新章节内容信息表中的数据
	// 					var sql3='update ds_book set tid=?,title1=?,title2=?,title3=? where  bid=? ';
	// 					pool.query(sql3,[tid,title1,title2,title3,bid],(err,result)=>{
	// 						if(err) throw err;
	// 						console.log('update ds_book:',result);
	// 						if(result.affectedRows>0){//如果更新成功，则返回1
	// 							res.send('1');
	// 						}else{//如果更新ds_book表失败，则返回0
	// 							res.send('0');
	// 						}
	// 					})
	// 				}else{//如果更新ds_zj表失败,则返回0
	// 					res.send('0');
	// 				}
	// 		})
			
	// 	}else{//如果更新ds_tushu表失败，则返回0
	// 		res.send('0');
	// 	}
			
	// })
})

//后台管理员删除书籍
router.post('/v1/bcdel',(req,res)=>{
	var tid=req.body.tid;//获取ds_tushu中的书籍编号
	var zid=req.body.zid;
	var bid=req.body.bid;
	var id=req.body.id;//获取ds_zj和ds_book中的唯一标识
	console.log(tid,id);
	var sql='select zid from ds_zj where tid=?';//查询ds_zj表中是否有名为id的书籍章节编号
	pool.query(sql,tid,(err,result)=>{
		if(err)throw err;
		console.log('查询ds_zj表中是否有名为id的书籍章节编号:',result);
		if(result.length>1){//如果有这条数据，而且多于1条
			var sql1='delete from ds_zj where zid=?';//删除该条数据的章节信息
			pool.query(sql1,zid,(err,result)=>{
				if(err)throw err;
				console.log('如果有这条数据，而且多于1条，删除该条数据的章节信息ds_zj:',result);
				if(result.affectedRows>0){//如果删除成功
					var sql2='delete from ds_book where bid=?';//继续删除该条数据的章节内容信息
					pool.query(sql2,bid,(err,result)=>{
						if(err)throw err;
						console.log('如果有这条数据，而且多于1条，继续删除该条数据的章节内容信息ds_book:',result);
						if(result.affectedRows>0){//如果删除成功，返回1
							res.send('1');
						}else{//如果删除ds_book中的数据失败，返回0
							res.send('0');
						}
					})
				}else{//如果删除ds_zj中的失败，返回0
					res.send('0');
				}
			})
			
		}else if(result.length==1){//如果有这条数据，而且只有1条
			var sql3='delete  from ds_zj where zid=? ';//删除编号为id的ds_zj的数据
			pool.query(sql3,zid,(err,result)=>{
				if(err)throw err;
				console.log('如果有这条数据，而且只有1条,删除编号为id的ds_zj的数据:',result);
				if(result.affectedRows>0){//如果删除成功
					var sql4='delete from ds_book where bid=?';//删除编号为id的ds_book的数据
					pool.query(sql4,bid,(err,result)=>{
						if(err)throw err;
						console.log('如果有这条数据，而且只有1条,删除编号为id的ds_book的数据:',result);
						if(result.affectedRows>0){
							var sql5='delete from ds_tushu where tid=?';//删除名称为tname的ds_tushu的数据
							pool.query(sql5,tid,(err,result)=>{
								if(err)throw err;
								console.log('如果有这条数据，而且只有1条,删除编号为id的ds_tushu的数据:',result);
								if(result.affectedRows>0){
									res.send('1');
								}else{
									res.send('0');
								}
							})
						}else{
							res.send('0');
						}
					})
					
				}else{//如果ds_tushu中的数据删除失败，返回0
					res.send('0');
				}
			})
			
		}else{//如果查询不到编号为tid的该条数据，直接返回0
			res.send('0');
		}
	})
})

//后台管理员管理用户根据uname查询到的表
router.get('/v1/chabcusertable/:uname',(req,res)=>{
	var uname=req.params.uname;
	var sql='select uid,uname,upwd,email,phone,gender from ds_user where uname like ? order by uid';
	pool.query(sql,['%'+uname+'%'],(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(result.length>0){
			res.send({code:1,msg:'查询到了用户数据！查询成功！',result:result});
		}else{
			res.send({code:0,msg:'没查询到用户数据！查询失败！'})
		}
		
	})
});

//后台管理员管理用户的表
router.get('/v1/bcusertable',(req,res)=>{
	var sql='select uid,uname,upwd,email,phone,gender from ds_user order by uid';
	pool.query(sql,(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(result.length>0){
			res.send({code:1,msg:'查询到了用户数据！查询成功！',result:result});
		}else{
			res.send({code:0,msg:'没查询到用户数据！查询失败！'})
		}
		
	})
});

//后台管理员修改用户信息时模态框中的文本框呈现该条原本的数据
router.post('/v1/bccxuserup',(req,res)=>{
	var uid=req.body.uid;//获取ds_zj表中的zid作为查询条件
	//根据zid查询条件，多表查询，查询出想要的数据，并返回给前端的修改按钮中的模态框中
	var sql='select uname,upwd,email,phone,gender from ds_user where uid=?';
	pool.query(sql,uid,(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(result.length>0){//如果查询成功，有结果
			res.send({code:1,msg:'加载用户数据成功！',result:result});
		}else{//如果查询失败
			res.send({code:0,msg:'加载用户数据失败！'});
		}
	})
})

//后台管理员修改用户
router.post('/v1/bcupuserbook',(req,res)=>{
	var uname=req.body.uname;
	var upwd=req.body.upwd;
	var email=req.body.email;
	var phone=req.body.phone;
	var gender=req.body.gender;
	var uid=req.body.uid;
	
	var sql='update ds_user set uname=?,upwd=?,email=?,phone=?,gender=? where uid=?';
	pool.query(sql,[uname,upwd,email,phone,gender,uid],(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(result.changedRows>0){
			res.send('1');
		}else{
			res.send('0');
		}
	});
})

//后台管理员删除用户
router.post('/v1/bcuserdel',(req,res)=>{
	var uid=req.body.uid;//获取ds_user中的用户编号
	var sql='delete from ds_user where uid=?';
	pool.query(sql,uid,(err,result)=>{
		if(err)throw err;
		if(result.affectedRows>0){
			res.end('1');
		}else{
			res.send('0');
		}
	})
})

//后台管理员添加用户
router.post('/v1/bcadduserbook',(req,res)=>{
	var uid=req.body.uid;
	var uname=req.body.uname;
	var upwd=req.body.upwd;
	var email=req.body.email;
	var phone=req.body.phone;
	var gender=req.body.gender;
	
	var sql='insert into ds_user values(?,?,?,?,?,?)';
	pool.query(sql,[uid,uname,upwd,email,phone,gender],(err,result)=>{
		if(err)throw err;
		console.log(result);
		if(result.affectedRows>0){
			res.send('1');
		}else{
			res.send('0');
		}
	})
})
module.exports=router;