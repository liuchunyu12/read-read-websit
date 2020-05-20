function addcart(tid,tKind,tname,author,tStatus,ID,id){
    var addShujia=document.getElementById("addShujia");
    console.log(1);
    console.log(tid+"_"+tKind+"_"+tStatus+"_"+author+"_"+tname+"_"+ID+'_'+id);
    //功能：将图书信息添加至书架表中
    //ajax4步
    //1.创建xhr异步对象
    var xhr=new XMLHttpRequest();
    //4.接受响应，创建监听
    xhr.onreadystatechange=function(){
    if(xhr.readyState==4 && xhr.status==200){
        var result=xhr.responseText;
        var arr=JSON.parse(result);
        console.log(arr);
        if(arr.code==1){
            alert("添加成功");
        }else if(arr.code==2){
            alert('已在书架');
            // if(arr.res.tid==tid){
            //     addShujia.innerHTML=`${arr.msg}`;
            // }
        }
    }
}
//2.创建请求，打开连接
xhr.open("post","/ds/v1/addcart",true);
//3.发送请求
xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
var formdata="tid="+tid+"&tKind="+tKind+"&tname="+tname+"&author="+author+"&tStatus="+tStatus+'&ID='+ID+'&zjid='+id;
console.log(formdata);
xhr.send(formdata);
}