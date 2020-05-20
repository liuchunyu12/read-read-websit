
// details
function detail(){
    //获取search.html页面上传过来的值tid
    var st=window.location.href;
    var ID=st.substr(st.indexOf('=')+1);
    ID=parseInt(ID);
    console.log(ID,typeof ID);

    //ajax4步
				//1.创建xhr异步对象
				var xhr=new XMLHttpRequest();
				//4.接受响应，创建监听
				xhr.onreadystatechange=function(){//接收服务器上的/ds/v1/detail数据接口返回的数据
					if(xhr.readyState==4 && xhr.status==200){
						var result=xhr.responseText;//获取到数据接口返回的数据
						//json解析
            var arr=JSON.parse(result);//把接收到的数据进行格式解析，方便我们使用
            console.log(arr);
            console.log(arr.result[ID]);
            if(arr.code==1){//如果返回的code值为1，表示登录成功之后
                            //登录后头部的样式及内容
							str=`<div class="dropdown" id="header-a">
				<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
				<ul class="dropdown-menu text-center">
                    <li><a  href="user.html">个人信息</a></li>
                    <li><a  href="cart.html">个人书架</a></li>
                    <li><a onclick="tuichu()">退出</a></li>
                </ul>
                <a href="back_login.html">后台登录</a>
			</div>`;
                                header.innerHTML=str;//把样式及内容放入头部的id为header的div中，代替原来的样式及内容
            //书写登录成功之后，页面上的主要内容
            var strHTML=`
                <ul class="breadcrumb dao">
                    <li>当前位置：</li>
                    <li class="breadcrumb-item text-muted"><a href="index.html">首页</a></li>
                    <li class="breadcrumb-item text-muted"><a href="fenlei_detail.html?tKname=${arr.result[0].tKname}">${arr.result[0].tKind}</a></li>
                    <li class="breadcrumb-item text-muted">${arr.result[0].tname}</li>
                </ul>
							  <div class="left">
      
                   <img style="margin-right:10px;" src="${arr.result[0].timage}" alt="">
                   <div class="leftright">
                      <h3>${arr.result[0].tname}</h3>
                      <div class="bq">
                         <span style="color:#fff;background-color: green;">${arr.result[0].tStatus}</span>
                         <span style="color:#fff;background-color: red;">${arr.result[0].tKind}</span>
                         <span>${arr.result[0].tlabel}</span>
                      </div>
                      <div class="tj">
                         <span class="text-muted">作者</span><h5 styel="color:#000;">${arr.result[0].author}</h5>&nbsp;&nbsp;&nbsp;&nbsp;
                         <span class="text-muted">字数</span><h5 styel="color:#000;">${arr.result[0].tCount}</h5>
                      </div>
                      <p>${arr.result[0].description}</p>
                      <a class="btn btn-danger m-1" href="zj_detail.html?ID=${arr.result[0].ID}&id=${arr.result[0].id-1}">开始阅读</a>
                      <a class="btn btn-success m-1" onclick="addcart(${arr.result[0].tid},'${arr.result[0].tKind}','${arr.result[0].tname}','${arr.result[0].author}','${arr.result[0].tStatus}','${arr.result[0].ID}','${arr.result[0].id}')" id="addShujia">加入书架</a>
                      <a class="btn btn-info m-1" href="mulu_detail.html?tid=${arr.result[0].tid}">全部目录</a>
                   </div>
                </div>
							`;
						mul.innerHTML=strHTML;//把主要内容放入id为mul的div中，显示到页面上
          }else if(arr.code==0){//如果返回的code值为0，表示登录失败，表头样式及内容不变
            //登录失败后页面上的主要内容
            var strHTML=`
                <ul class="breadcrumb dao">
                    <li>当前位置：</li>
                    <li class="breadcrumb-item text-muted"><a href="index.html">首页</a></li>
                    <li class="breadcrumb-item text-muted"><a href="fenlei_detail.html?tKname=${arr.result[0].tKname}">${arr.result[0].tKind}</a></li>
                    <li class="breadcrumb-item text-muted">${arr.result[0].tname}</li>
                </ul>
							  <div class="left">
      
                   <img style="margin-right:10px;" src="${arr.result[0].timage}" alt="">
                   <div class="leftright">
                      <h3>${arr.result[0].tname}</h3>
                      <div class="bq">
                         <span style="color:#fff;background-color: green;">${arr.result[0].tStatus}</span>
                         <span style="color:#fff;background-color: red;">${arr.result[0].tKind}</span>
                         <span>${arr.result[0].tlabel}</span>
                      </div>
                      <div class="tj">
                         <span class="text-muted">作者</span><h5 styel="color:#000;">${arr.result[0].author}</h5>&nbsp;&nbsp;&nbsp;&nbsp;
                         <span class="text-muted">字数</span><h5 styel="color:#000;">${arr.result[0].tCount}</h5>
                      </div>
                      <p>${arr.result[0].description}</p>
                      <a class="btn btn-danger m-1" href="zj_detail.html?ID=${arr.result[0].ID}&id=${arr.result[0].id-1}">开始阅读</a>
                      <a class="btn btn-success m-1" href="02_login.html">加入书架</a>
                      <a class="btn btn-info m-1" href="mulu_detail.html?tid=${arr.result[0].tid}">全部目录</a>
                   </div>
                </div>
							`;
						mul.innerHTML=strHTML;//把登录失败后的页面上的主要内容放入id为mul的div中
          }
        }
				}
				//2.创建请求，打开连接
				xhr.open("post","/ds/v1/detail",true);//打开链接到服务器上的/ds/v1/detail的数据接口
                //3.发送请求
                xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                var formdata='ID='+ID;
				xhr.send(formdata);//把数据发送给服务器的/ds/v1/detail数据接口
}

//fenlei
function fenlei(){
    //获取index.html和search.html页面上传过来的值tKname
    var st=window.location.href;
    var tKname=st.substr(st.lastIndexOf('=')+1);
    console.log(tKname,typeof tKname);

    //ajax4步
				//1.创建xhr异步对象
				var xhr=new XMLHttpRequest();
				//4.接受响应，创建监听
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						var result=xhr.responseText;
						//json解析
            var arr=JSON.parse(result);
            console.log(arr);
            var str='';
            var strHTML='';
            var banner1=document.getElementById('banner1');
            var bs=`
                <div>
                <img src="images/fenlei/${arr.result[0].tKname}.jpg"/>
                <span>${arr.result[0].tKind}</span>
                </div>
            `;
            banner1.innerHTML=bs;
            console.log(banner1.innerHTML);
            if(arr.code==1){
							str=`<div class="dropdown" id="header-a">
				                    <button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
				                    <ul class="dropdown-menu text-center">
                                        <li><a  href="user.html">个人信息</a></li> 
                                        <li><a  href="cart.html">个人书架</a></li>
                                        <li><a onclick="tuichu()">退出</a></li>
                                    </ul>
                                    <a href="back_login.html">后台登录</a>
                                </div>`;
               header.innerHTML=str;
               for(var i=0;i<arr.result.length;i++){
                strHTML+=`
                    <div class="ys">
                        <a href="detail_detail.html?ID=${arr.result[i].ID}"><img style="width:240px;height:320px;" src="${arr.result[i].timage}"/></a>
                        <div class="right">
                            <a href="detail_detail.html?ID=${arr.result[i].ID}"><h1>${arr.result[i].tname}</h1></a>
                            <div class="zz">
                                <span class="text-muted">作者</span>
                                <h5 class="font-weight-nomal">${arr.result[i].author}</h5>&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="text-muted">类型</span>
                                <h5 class="font-weight-nomal">${arr.result[i].tKind}</h5><br/>
                            </div>
                            <p>${arr.result[i].description}</p>
                        </div>
                    </div>
                `;
            }
            
            mul.innerHTML=strHTML;
                    }else if(arr.code==0){
                        for(var i=0;i<arr.result.length;i++){
                            strHTML+=`
                                <div class="ys">
                                    <a href="detail_detail.html?ID=${arr.result[i].ID}"><img style="width:240px;height:320px;" src="${arr.result[i].timage}"/></a>
                                    <div class="right">
                                        <a href="detail_detail.html?ID=${arr.result[i].ID}"><h1>${arr.result[i].tname}</h1></a>
                                        <div class="zz">
                                            <span class="text-muted">作者</span>
                                            <h5 class="font-weight-nomal">${arr.result[i].author}</h5>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <span class="text-muted">类型</span>
                                            <h5 class="font-weight-nomal">${arr.result[i].tKind}</h5><br/>
                                        </div>
                                        <p>${arr.result[i].description}</p>
                                    </div>
                                </div>
                            `;
                        }
                        
						mul.innerHTML=strHTML;
                    }
                }
				}
				//2.创建请求，打开连接
                xhr.open("post","/ds/v1/fenlei",true);
                //3.发送请求
                xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                var formdata='tKname='+tKname;
				xhr.send(formdata);
}

// mulu
function mulu(){
    //获取detail_detail.html页面上传过来的值tid
    var st=window.location.href;
    var tid=st.substr(st.lastIndexOf('=')+1);
    tid=parseInt(tid);
    console.log(tid,typeof tid);

    //ajax4步
				//1.创建xhr异步对象
				var xhr=new XMLHttpRequest();
				//4.接受响应，创建监听
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						var result=xhr.responseText;
						//json解析
            var arr=JSON.parse(result);
            console.log(arr);
            var zj='';
            if(arr.code==1){
							str=`<div class="dropdown" id="header-a">
				<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
				<ul class="dropdown-menu text-center">
                    <li><a  href="user.html">个人信息</a></li>
                    <li><a  href="cart.html">个人书架</a></li>
                    <li><a onclick="tuichu()">退出</a></li>
                </ul>
                <a href="back_login.html">后台登录</a>
            </div>`;
               header.innerHTML=str;
            var strHTML=`
                <ul class="breadcrumb dao">
                    <li>当前位置：</li>
                    <li class="breadcrumb-item text-muted"><a href="index.html">首页</a></li>
                    <li class="breadcrumb-item text-muted"><a href="fenlei_detail.html?tKname=${arr.result[0].tKname}">${arr.result[0].tKind}</a></li>
                    <li class="breadcrumb-item text-muted">${arr.result[0].tname}</li>
                </ul>
                <div class="zt">
				<h1 >${arr.result[0].tname}</h1>
                <span  class="text-muted">作者：</span>${arr.result[0].author}<br/>
                <div id="zhangjie">
                    
                </div>
                </div>
							`;
                        mul.innerHTML=strHTML;
                for(var z=0;z<arr.result.length;z++){
                    zj+=`<a href="zj_detail.html?ID=${arr.result[z].ID}&id=${arr.result[z].id-1}">${arr.result[z].zname.slice(0,9)}</a>`;
                }
                zhangjie.innerHTML=zj;
                console.log(zhangjie.innerHTML);
                
          }else if(arr.code==0){
            var strHTML=`
                <ul class="breadcrumb dao">
                    <li>当前位置：</li>
                    <li class="breadcrumb-item text-muted"><a href="index.html">首页</a></li>
                    <li class="breadcrumb-item text-muted"><a href="fenlei_detail.html?tKname=${arr.result[0].tKname}">${arr.result[0].tKind}</a></li>
                    <li class="breadcrumb-item text-muted">${arr.result[0].tname}</li>
                </ul>
                <div class="zt">
				<h1 >${arr.result[0].tname}</h1>
                <span  class="text-muted">作者：</span>${arr.result[0].author}<br/>
                <div id="zhangjie">
                   
                </div>
                </div>
							`;
                        mul.innerHTML=strHTML;
                        for(var z=0;z<arr.result.length;z++){
                            zj+=`<a href="zj_detail.html?ID=${arr.result[z].ID}&id=${arr.result[z].id-1}">${arr.result[z].zname.slice(0,9)}</a>`;
                            console.log(arr.result[z].ID);
                          }
                        zhangjie.innerHTML=zj;
                        console.log(zhangjie.innerHTML);
          }
        }
				}
				//2.创建请求，打开连接
				xhr.open("post","/ds/v1/mulu",true);
                //3.发送请求
                xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                var formdata='tid='+tid;
				xhr.send(formdata);
			
}


// zhangjie 
function zj(){
    //获取mulu_detail.html页面上传过来的值tid
    var st=window.location.href;
    var ID=st.substr(st.indexOf('=')+1);
    ID=parseInt(ID);
    console.log(ID,typeof ID);
    var id=st.substr(st.lastIndexOf('=')+1);
    id=parseInt(id);
    console.log(id,typeof id);

    //ajax4步
    //1.创建xhr异步对象
    var xhr=new XMLHttpRequest();
    //4.接受响应，创建监听
    xhr.onreadystatechange=function(){
      if(xhr.readyState==4 && xhr.status==200){
        var result=xhr.responseText;
        //json解析
        var arr=JSON.parse(result);
        console.log(arr);
        if(arr.code==1){
              var str=`<div class="dropdown" id="header-a">
                          <button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
                            <ul class="dropdown-menu text-center">
                              <li><a  href="user.html">个人信息</a></li>
                              <li><a  href="cart.html">个人书架</a></li>
                              <li><a onclick="tuichu()">退出</a></li>
                            </ul>
                            <a href="back_login.html">后台登录</a>
                      </div>`;
              header.innerHTML=str;
          
              var strHTML=`
              <ul class="breadcrumb dao">
                  <li>当前位置：</li>
                  <li class="breadcrumb-item text-muted"><a href="index.html">首页</a></li>
                  <li class="breadcrumb-item text-muted"><a href="fenlei_detail.html?tKname=${arr.result[id].tKname}">${arr.result[id].tKind}</a></li>
                  <li class="breadcrumb-item text-muted"><a href="detail_detail.html?ID=${ID}">${arr.result[id].tname}</a></li>
              </ul>
              <div class="container">
                  <h1>${arr.result[id].zname}</h1>
                  <hr>
                  <div id="nr">
                    ${arr.result[id].title1}
                    ${arr.result[id].title2}
                    ${arr.result[id].title3}
                  </div><br/>
                  <div id="msx1">
                    <a href="mulu_detail.html?tid=${arr.result[id].tid}" class="btn btn-light">目录</a>
                    <a href="" id="ztop" class="btn btn-light">上一章</a>
                    <a href="" id="zbot" class="btn btn-light">下一章</a>
                  </div>
    
              </div>
           `;
           console.log(muluzj); 
           muluzj.innerHTML=strHTML;
            console.log(muluzj.innerHTML);
            countz(ID);

            
           
          }else if(arr.code==0){//如果没有登录，页面显示的内容
            var strHTML=`
              <ul class="breadcrumb dao">
                  <li>当前位置：</li>
                  <li class="breadcrumb-item text-muted"><a href="index.html">首页</a></li>
                  <li class="breadcrumb-item text-muted"><a href="fenlei_detail.html?tKname=${arr.result[id].tKname}">${arr.result[id].tKind}</a></li>
                  <li class="breadcrumb-item text-muted"><a href="detail_detail.html?ID=${ID}">${arr.result[id].tname}</a></li>
              </ul>
              <div class="container">
                  <h1>${arr.result[id].zname}</h1>
                  <hr>
                  <div id="nr">
                    ${arr.result[id].title1}
                    ${arr.result[id].title2}
                    ${arr.result[id].title3}
                  </div><br/>
                  <div id="msx1">
                    <a href="mulu_detail.html?tid=${arr.result[id].tid}" class="btn btn-light">目录</a>
                    <a href="" id="ztop" class="btn btn-light">上一章</a>
                    <a href="" id="zbot" class="btn btn-light">下一章</a>
                  </div>
    
              </div>
           `;
           console.log(muluzj); 
           muluzj.innerHTML=strHTML;
            console.log(muluzj.innerHTML);
            countz(ID);
            
            
          }
          }
				}
				//2.创建请求，打开连接
				xhr.open("get","/ds/v1/zj",true);
        //3.发送请求
                xhr.send();
                
                function countz(ID){
                    var xhr=new XMLHttpRequest();
                    xhr.onreadystatechange=()=>{
                        if(xhr.readyState==4 && xhr.status==200){
                            var result=xhr.responseText;
                            var arr=JSON.parse(result);
                            console.log(arr[0].count);
                            var count=arr[0].count;
                            count=parseInt(count);
                            console.log(count,typeof count);
                            document.getElementById('ztop').onclick=function(){
                                if((ID-1)*count==id){
                                  this.href='javascript:;';
                                }else{
                                  this.href='zj_detail.html?ID='+`${ID}`+'&id='+`${id-1}`;
                                  console.log(this.href);
                                }
                              }
                              document.getElementById('zbot').onclick=function(){
                                if(ID*count-1==id){
                                  this.href='javascript:;';
                                }else{
                                  this.href='zj_detail.html?ID='+`${ID}`+'&id='+`${id+1}`;
                                  console.log(this.href);
                                }
                              }
                        }
                    }
                    xhr.open('post','/ds/v1/count',true);
                    xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                    var formdata='ID='+ID;
                    xhr.send(formdata);
                } 
			
}



//shuku
 function shuku(){
     //ajax4步
			//1.创建xhr异步对象
			var xhr=new XMLHttpRequest();
			//4.接受响应，创建监听
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4 && xhr.status==200){
					var result=xhr.responseText;
					//json解析
					var arr=JSON.parse(result);
					var str="";
					console.log(arr);
					if(arr.code==1){
						str=`<div class="dropdown" id="header-a">
								<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
								<ul class="dropdown-menu text-center">
                                    <li><a  href="user.html">个人信息</a></li>
                                    <li><a  href="cart.html">个人书架</a></li>
                    				<li><a onclick="tuichu()">退出</a></li>
								</ul>
								<a href="back_login.html">后台登录</a>
							</div>`;
							header.innerHTML=str;
					}
				}
			}	
			//2.创建请求，打开连接
			xhr.open("post","/ds/v1/detail",true);
			//3.发送请求
			 //3.发送请求
			 xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                var formdata='ID='+1;
				xhr.send(formdata);//把数据发送给服务器的/ds/v1/detail数据接口

    document.getElementById('Na').onclick=function(){
        //ajax4步
				//1.创建xhr异步对象
				var xhr=new XMLHttpRequest();
				//4.接受响应，创建监听
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						var result=xhr.responseText;
						//json解析
                        var arr=JSON.parse(result);
                        var str="";
                        console.log(arr);
                        var strHTML1='';
						if(arr.code==1){
							str=`<div class="dropdown" id="header-a">
				<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
				<ul class="dropdown-menu text-center">
					<li><a  href="cart.html">个人书架</a></li>
                    <li><a onclick="tuichu()">退出</a></li>
                </ul>
                <a href="back_login.html">后台登录</a>
			</div>`;
                                header.innerHTML=str;
                                if(arr.result.length%2==1){
                                    for(var a=0;a<arr.result.length-1;a++){
                                        console.log(1);
                                        strHTML1+=`        
                        <tr class="item">
                      
                            <td class="left">
                                <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                        a=a+1;
                                       
                                    }
                                    strHTML1+=`        
                        <tr class="item">
                      
                            <td clospan="2" class="left">
                                <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                }else{
                                    for(var a=0;a<arr.result.length;a++){
                                        console.log(2);
                                        strHTML1+=`        
                        <tr class="item">
                            <td class="left">
                                <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            </tr>
                        
                                        `;
                                        a=a+1;
                                    }
                                }
                                
                                mul1.innerHTML=strHTML1;
						
                    }else if(arr.code==0){
                        if(arr.result.length%2==1){
                            for(var a=0;a<arr.result.length-1;a++){
                                console.log(1);
                                strHTML1+=`        
                <tr class="item">
              
                    <td class="left">
                        <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                            </div>
                            <span>${arr.result[a].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                            </div>
                            <span>${arr.result[a+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                                a=a+1;
                               
                            }
                            strHTML1+=`        
                <tr class="item">
              
                    <td clospan="2" class="left">
                        <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                            </div>
                            <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                        }else{
                            for(var a=0;a<arr.result.length;a++){
                                console.log(2);
                                strHTML1+=`        
                <tr class="item">
                    <td class="left">
                        <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                            </div>
                            <span>${arr.result[a].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                            </div>
                            <span>${arr.result[a+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    </tr>
                
                                `;
                                a=a+1;
                            }
                        }
                        
                        mul1.innerHTML=strHTML1;
                    }
                }
				}
				//2.创建请求，打开连接
				xhr.open("get","/ds/v1/shukuNa",true);
				//3.发送请求
				xhr.send();
 
    }

    document.getElementById('Nv').onclick=function(){
        //ajax4步
				//1.创建xhr异步对象
				var xhr=new XMLHttpRequest();
				//4.接受响应，创建监听
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						var result=xhr.responseText;
						//json解析
                        var arr=JSON.parse(result);
                        var str="";
                        console.log(arr);
                        var strHTML2='';
						if(arr.code==1){
							str=`<div class="dropdown" id="header-a">
				<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
				<ul class="dropdown-menu text-center">
					<li><a  href="cart.html">个人书架</a></li>
                    <li><a onclick="tuichu()">退出</a></li>
                </ul>
                <a href="back_login.html">后台登录</a>
			</div>`;
                                header.innerHTML=str;
                                if(arr.result.length%2==1){
                                    for(var b=0;b<arr.result.length-1;b++){
                                        console.log(2);
                                        strHTML2+=`        
                        <tr class="item">
                      
                            <td class="left">
                                <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                        b=b+1;
                                       
                                    }
                                    strHTML2+=`        
                        <tr class="item">
                      
                            <td clospan="2" class="left">
                                <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                }else{
                                    for(var b=0;b<arr.result.length;b++){
                                        console.log(2);
                                        strHTML2+=`        
                        <tr class="item">
                            <td class="left">
                                <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            </tr>
                        
                                        `;
                                        b=b+1;
                                    }
                                }
                                
                                mul2.innerHTML=strHTML2;
						
                    }else if(arr.code==0){
                        if(arr.result.length%2==1){
                            for(var b=0;b<arr.result.length-1;b++){
                                console.log(2);
                                strHTML2+=`        
                <tr class="item">
              
                    <td class="left">
                        <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                            </div>
                            <span>${arr.result[b].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                            </div>
                            <span>${arr.result[b+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                                b=b+1;
                               
                            }
                            strHTML2+=`        
                <tr class="item">
              
                    <td clospan="2" class="left">
                        <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                            </div>
                            <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                        }else{
                            for(var b=0;b<arr.result.length;b++){
                                console.log(2);
                                strHTML2+=`        
                <tr class="item">
                    <td class="left">
                        <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                            </div>
                            <span>${arr.result[b].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                            </div>
                            <span>${arr.result[b+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    </tr>
                
                                `;
                                b=b+1;
                            }
                        }
                        
                        mul2.innerHTML=strHTML2;
                    }
                }
				}
				//2.创建请求，打开连接
				xhr.open("get","/ds/v1/shukuNv",true);
				//3.发送请求
				xhr.send();
    }

     
 }

//wanben
function wanben(){
    //ajax4步
			//1.创建xhr异步对象
			var xhr=new XMLHttpRequest();
			//4.接受响应，创建监听
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4 && xhr.status==200){
					var result=xhr.responseText;
					//json解析
					var arr=JSON.parse(result);
					var str="";
					console.log(arr);
					if(arr.code==1){
						str=`<div class="dropdown" id="header-a">
								<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
								<ul class="dropdown-menu text-center">
                                    <li><a  href="user.html">个人信息</a></li>    
                                    <li><a  href="cart.html">个人书架</a></li>
                    				<li><a onclick="tuichu()">退出</a></li>
								</ul>
								<a href="back_login.html">后台登录</a>
							</div>`;
							header.innerHTML=str;
					}
				}
			}	
			//2.创建请求，打开连接
			xhr.open("post","/ds/v1/detail",true);
			//3.发送请求
			 //3.发送请求
			 xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                var formdata='ID='+1;
				xhr.send(formdata);//把数据发送给服务器的/ds/v1/detail数据接口

    document.getElementById('Na').onclick=function(){
        //ajax4步
				//1.创建xhr异步对象
				var xhr=new XMLHttpRequest();
				//4.接受响应，创建监听
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						var result=xhr.responseText;
						//json解析
                        var arr=JSON.parse(result);
                        var str="";
                        console.log(arr);
                        var strHTML1='';
						if(arr.code==1){
							str=`<div class="dropdown" id="header-a">
				<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
				<ul class="dropdown-menu text-center">
					<li><a  href="cart.html">个人书架</a></li>
                    <li><a onclick="tuichu()">退出</a></li>
                </ul>
                <a href="back_login.html">后台登录</a>
			</div>`;
                                header.innerHTML=str;
                                if(arr.result.length%2==1){
                                    for(var a=0;a<arr.result.length-1;a++){
                                        console.log(1);
                                        strHTML1+=`        
                        <tr class="item">
                      
                            <td class="left">
                                <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                        a=a+1;
                                       
                                    }
                                    strHTML1+=`        
                        <tr class="item">
                      
                            <td clospan="2" class="left">
                                <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                }else{
                                    for(var a=0;a<arr.result.length;a++){
                                        console.log(2);
                                        strHTML1+=`        
                        <tr class="item">
                            <td class="left">
                                <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            </tr>
                        
                                        `;
                                        a=a+1;
                                    }
                                }
                                
                                mul1.innerHTML=strHTML1;
						
                    }else if(arr.code==0){
                        if(arr.result.length%2==1){
                            for(var a=0;a<arr.result.length-1;a++){
                                console.log(1);
                                strHTML1+=`        
                <tr class="item">
              
                    <td class="left">
                        <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                            </div>
                            <span>${arr.result[a].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                            </div>
                            <span>${arr.result[a+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                                a=a+1;
                               
                            }
                            strHTML1+=`        
                <tr class="item">
              
                    <td clospan="2" class="left">
                        <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                            </div>
                            <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                        }else{
                            for(var a=0;a<arr.result.length;a++){
                                console.log(2);
                                strHTML1+=`        
                <tr class="item">
                    <td class="left">
                        <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                            </div>
                            <span>${arr.result[a].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                            </div>
                            <span>${arr.result[a+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    </tr>
                
                                `;
                                a=a+1;
                            }
                        }
                        
                        mul1.innerHTML=strHTML1;
                    }
                }
				}
				//2.创建请求，打开连接
				xhr.open("get","/ds/v1/wanbenNa",true);
				//3.发送请求
				xhr.send();
 
    }

    document.getElementById('Nv').onclick=function(){
        //ajax4步
				//1.创建xhr异步对象
				var xhr=new XMLHttpRequest();
				//4.接受响应，创建监听
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						var result=xhr.responseText;
						//json解析
                        var arr=JSON.parse(result);
                        var str="";
                        console.log(arr);
                        var strHTML2='';
						if(arr.code==1){
							str=`<div class="dropdown" id="header-a">
				<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
				<ul class="dropdown-menu text-center">
					<li><a  href="cart.html">个人书架</a></li>
                    <li><a onclick="tuichu()">退出</a></li>
                </ul>
                <a href="back_login.html">后台登录</a>
			</div>`;
                                header.innerHTML=str;
                                if(arr.result.length%2==1){
                                    for(var b=0;b<arr.result.length-1;b++){
                                        console.log(2);
                                        strHTML2+=`        
                        <tr class="item">
                      
                            <td class="left">
                                <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                        b=b+1;
                                       
                                    }
                                    strHTML2+=`        
                        <tr class="item">
                      
                            <td clospan="2" class="left">
                                <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                }else{
                                    for(var b=0;b<arr.result.length;b++){
                                        console.log(2);
                                        strHTML2+=`        
                        <tr class="item">
                            <td class="left">
                                <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            </tr>
                        
                                        `;
                                        b=b+1;
                                    }
                                }
                                
                                mul2.innerHTML=strHTML2;
						
                    }else if(arr.code==0){
                        if(arr.result.length%2==1){
                            for(var b=0;b<arr.result.length-1;b++){
                                console.log(2);
                                strHTML2+=`        
                <tr class="item">
              
                    <td class="left">
                        <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                            </div>
                            <span>${arr.result[b].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                            </div>
                            <span>${arr.result[b+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                                b=b+1;
                               
                            }
                            strHTML2+=`        
                <tr class="item">
              
                    <td clospan="2" class="left">
                        <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                            </div>
                            <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                        }else{
                            for(var b=0;b<arr.result.length;b++){
                                console.log(2);
                                strHTML2+=`        
                <tr class="item">
                    <td class="left">
                        <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                            </div>
                            <span>${arr.result[b].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                            </div>
                            <span>${arr.result[b+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    </tr>
                
                                `;
                                b=b+1;
                            }
                        }
                        
                        mul2.innerHTML=strHTML2;
                    }
                }
				}
				//2.创建请求，打开连接
				xhr.open("get","/ds/v1/wanbenNv",true);
				//3.发送请求
				xhr.send();
    }

     
 }

//mianfei
function mianfei(){
    //ajax4步
			//1.创建xhr异步对象
			var xhr=new XMLHttpRequest();
			//4.接受响应，创建监听
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4 && xhr.status==200){
					var result=xhr.responseText;
					//json解析
					var arr=JSON.parse(result);
					var str="";
					console.log(arr);
					if(arr.code==1){
						str=`<div class="dropdown" id="header-a">
								<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
								<ul class="dropdown-menu text-center">
                                    <li><a  href="user.html">个人信息</a></li>
                                    <li><a  href="cart.html">个人书架</a></li>
                    				<li><a onclick="tuichu()">退出</a></li>
								</ul>
								<a href="back_login.html">后台登录</a>
							</div>`;
							header.innerHTML=str;
					}
				}
			}	
			//2.创建请求，打开连接
			xhr.open("post","/ds/v1/detail",true);
			//3.发送请求
			 //3.发送请求
			 xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                var formdata='ID='+1;
				xhr.send(formdata);//把数据发送给服务器的/ds/v1/detail数据接口

    document.getElementById('Na').onclick=function(){
        //ajax4步
				//1.创建xhr异步对象
				var xhr=new XMLHttpRequest();
				//4.接受响应，创建监听
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						var result=xhr.responseText;
						//json解析
                        var arr=JSON.parse(result);
                        var str="";
                        console.log(arr);
                        var strHTML1='';
						if(arr.code==1){
							str=`<div class="dropdown" id="header-a">
				<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
				<ul class="dropdown-menu text-center">
					<li><a  href="cart.html">个人书架</a></li>
                    <li><a onclick="tuichu()">退出</a></li>
                </ul>
                <a href="back_login.html">后台登录</a>
			</div>`;
                                header.innerHTML=str;
                                if(arr.result.length%2==1){
                                    for(var a=0;a<arr.result.length-1;a++){
                                        console.log(1);
                                        strHTML1+=`        
                        <tr class="item">
                      
                            <td class="left">
                                <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                        a=a+1;
                                       
                                    }
                                    strHTML1+=`        
                        <tr class="item">
                      
                            <td clospan="2" class="left">
                                <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                }else{
                                    for(var a=0;a<arr.result.length;a++){
                                        console.log(2);
                                        strHTML1+=`        
                        <tr class="item">
                            <td class="left">
                                <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[a+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            </tr>
                        
                                        `;
                                        a=a+1;
                                    }
                                }
                                
                                mul1.innerHTML=strHTML1;
						
                    }else if(arr.code==0){
                        if(arr.result.length%2==1){
                            for(var a=0;a<arr.result.length-1;a++){
                                console.log(1);
                                strHTML1+=`        
                <tr class="item">
              
                    <td class="left">
                        <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                            </div>
                            <span>${arr.result[a].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                            </div>
                            <span>${arr.result[a+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                                a=a+1;
                               
                            }
                            strHTML1+=`        
                <tr class="item">
              
                    <td clospan="2" class="left">
                        <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                            </div>
                            <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                        }else{
                            for(var a=0;a<arr.result.length;a++){
                                console.log(2);
                                strHTML1+=`        
                <tr class="item">
                    <td class="left">
                        <img src="${arr.result[a].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a].ID}"><h3>${arr.result[a].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a].author} | <a href="fenlei_detail.html?tKname=${arr.result[a].tKname}">${arr.result[a].tKind}</a> | ${arr.result[a].tStatus} </span>
                            </div>
                            <span>${arr.result[a].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[a+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[a+1].ID}"><h3>${arr.result[a+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[a+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[a+1].tKname}">${arr.result[a+1].tKind}</a> | ${arr.result[a+1].tStatus} </span>
                            </div>
                            <span>${arr.result[a+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    </tr>
                
                                `;
                                a=a+1;
                            }
                        }
                        
                        mul1.innerHTML=strHTML1;
                    }
                }
				}
				//2.创建请求，打开连接
				xhr.open("get","/ds/v1/shukuNa",true);
				//3.发送请求
				xhr.send();
 
    }

    document.getElementById('Nv').onclick=function(){
        //ajax4步
				//1.创建xhr异步对象
				var xhr=new XMLHttpRequest();
				//4.接受响应，创建监听
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						var result=xhr.responseText;
						//json解析
                        var arr=JSON.parse(result);
                        var str="";
                        console.log(arr);
                        var strHTML2='';
						if(arr.code==1){
							str=`<div class="dropdown" id="header-a">
				<button data-toggle="dropdown" class=" dropdown-toggle"><img src="images/头像.png" alt=""></button>
				<ul class="dropdown-menu text-center">
					<li><a  href="cart.html">个人书架</a></li>
                    <li><a onclick="tuichu()">退出</a></li>
                </ul>
                <a href="back_login.html">后台登录</a>
			</div>`;
                                header.innerHTML=str;
                                if(arr.result.length%2==1){
                                    for(var b=0;b<arr.result.length-1;b++){
                                        console.log(2);
                                        strHTML2+=`        
                        <tr class="item">
                      
                            <td class="left">
                                <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                        b=b+1;
                                       
                                    }
                                    strHTML2+=`        
                        <tr class="item">
                      
                            <td clospan="2" class="left">
                                <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            
                            </tr>
                        
                                        `;
                                }else{
                                    for(var b=0;b<arr.result.length;b++){
                                        console.log(2);
                                        strHTML2+=`        
                        <tr class="item">
                            <td class="left">
                                <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b].description.slice(0,41)}</span>
                                </div>
                            </td>
                            <td class="right">
                                <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                                <div class="info">
                                    <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                                    <div class="info-bq">
                                        <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                                    </div>
                                    <span>${arr.result[b+1].description.slice(0,41)}</span>
                                </div>
                            </td>
                            </tr>
                        
                                        `;
                                        b=b+1;
                                    }
                                }
                                
                                mul2.innerHTML=strHTML2;
						
                    }else if(arr.code==0){
                        if(arr.result.length%2==1){
                            for(var b=0;b<arr.result.length-1;b++){
                                console.log(2);
                                strHTML2+=`        
                <tr class="item">
              
                    <td class="left">
                        <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                            </div>
                            <span>${arr.result[b].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                            </div>
                            <span>${arr.result[b+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                                b=b+1;
                               
                            }
                            strHTML2+=`        
                <tr class="item">
              
                    <td clospan="2" class="left">
                        <img src="${arr.result[arr.result.length-1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[arr.result.length-1].ID}"><h3>${arr.result[arr.result.length-1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[arr.result.length-1].author} | <a href="fenlei_detail.html?tKname=${arr.result[arr.result.length-1].tKname}">${arr.result[arr.result.length-1].tKind}</a> | ${arr.result[arr.result.length-1].tStatus} </span>
                            </div>
                            <span>${arr.result[arr.result.length-1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    
                    </tr>
                
                                `;
                        }else{
                            for(var b=0;b<arr.result.length;b++){
                                console.log(2);
                                strHTML2+=`        
                <tr class="item">
                    <td class="left">
                        <img src="${arr.result[b].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b].ID}"><h3>${arr.result[b].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b].author} | <a href="fenlei_detail.html?tKname=${arr.result[b].tKname}">${arr.result[b].tKind}</a> | ${arr.result[b].tStatus} </span>
                            </div>
                            <span>${arr.result[b].description.slice(0,41)}</span>
                        </div>
                    </td>
                    <td class="right">
                        <img src="${arr.result[b+1].timage}" style="margin-right:20px;width:180px;"/>
                        <div class="info">
                            <a href="detail_detail.html?ID=${arr.result[b+1].ID}"><h3>${arr.result[b+1].tname}</h3></a>
                            <div class="info-bq">
                                <span>${arr.result[b+1].author} | <a href="fenlei_detail.html?tKname=${arr.result[b+1].tKname}">${arr.result[b+1].tKind}</a> | ${arr.result[b+1].tStatus} </span>
                            </div>
                            <span>${arr.result[b+1].description.slice(0,41)}</span>
                        </div>
                    </td>
                    </tr>
                
                                `;
                                b=b+1;
                            }
                        }
                        
                        mul2.innerHTML=strHTML2;
                    }
                }
				}
				//2.创建请求，打开连接
				xhr.open("get","/ds/v1/shukuNv",true);
				//3.发送请求
				xhr.send();
    }

     
 }


