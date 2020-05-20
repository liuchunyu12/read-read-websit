function tuichu(){
    //window.location.replace("02_login.html");
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==4 && xhr.status==200){
            var result=xhr.responseText;
            console.log(result);
            if(result==1){
                alert("退出成功");
                window.location.replace("index.html");
            }else{
                alert("退出失败");
            }
        }
    }
    xhr.open("get","/ds/v1/quit",true);
    xhr.send();
}