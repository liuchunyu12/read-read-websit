//main.js
//console.log("1:main.js");
//1:创建全局变量
//1.1：创建四个变量保存画布画笔
var can1;
var can2;
var ctx1;
var ctx2;
//1.2:创建两个变量画布的宽度和高度
var canWidth;
var canHeight;
//1.3:创建一个变量保存画布背景
var bgPic;
//1.4:创建一个变量保存海葵
var ane;
//1.5:创建一个变量保存大鱼
var mom;
//1.6：创建两个变量保存鼠标的位置
var mx=0;
var my=0;
//1.7：创建一个变量保存食物
var fruit;
//1.8:创建一个变量保存分数
var data;

//2：创建函数game   入口函数   只调用一次   第一次被调用的函数
function game(){
    init();
    gameloop();
}

//3:创建函数init   初始化函数：为全局变量第一次赋值
function init(){
    //获取两个画布元素
    can1=document.getElementById("canvas1");
    can2=document.getElementById("canvas2");
    //获取两个画笔元素
    ctx1=can1.getContext("2d");
    ctx2=can2.getContext("2d");
    //获取画布宽度和高度
    canWidth=can1.width;
    canHeight=can1.height;
    //创建图片对象并且下载图片
    bgPic=new Image();
    bgPic.src="images/src/background.jpg";
    //3.5:创建海葵对象并且调用初始化方法
    ane=new AneObj();
    ane.init();
    //3.6:创建大鱼对象并且调用初始化方法
    mom=new MomObj();
    mom.init();
    //3.7:为画布1绑定鼠标移动事件
    can1.onmousemove=function(e){
        mx=e.offsetX;
        my=e.offsetY;
    }
    //3.8:创建食物对象并且调用初始化方法
    fruit=new FruitObj();
    fruit.init();
    //3.9：创建分数对象
    data=new DataObj();

}

//4:创建函数gameloop  创建智能定时器  使用定时器绘制每个元素
function gameloop(){
    //4.1：创建智能定时器  循环调用gameloop函数完成多次绘制元素功能
    requestAnimationFrame(gameloop);
    //4.2：将背景图片绘制到第二块画布上（后面）
    ctx2.drawImage(bgPic,0,0);
    //4.3:绘制海葵对象  调用draw方法
    ane.draw();
    //4.3.1:清除画布1的所有内容
    ctx1.clearRect(0,0,canWidth,canHeight);
    //4.3.0:完成大鱼与食物的碰撞检测
    collision();
    //4.4:绘制大鱼对象   调用draw方法
    mom.draw();
    //4.5:绘制食物对象  调用draw方法
    fruit.draw();
    //4.6:绘制分数对象  调用draw方法
    data.draw();
}

//5:当网页创建成功后调用game
document.body.onload=game;

//功能二：海葵
//1：创建海葵的构造函数
var AneObj=function(){
    //console.log(1);
    this.rootX=[];//海葵起点x值  海葵起点y值为600   海葵控制点x值和起点x值相同  控制点y值为600-100
    this.headX=[];//海葵终点x值
    this.headY=[];//海葵终点y值
    this.amp=[];//海葵摆动幅度  20~50
    this.alpha=0;//保存正弦函数计算结果   -1~1
}
//2:为海葵的构造函数添加属性num   表示海葵数量
AneObj.prototype.num=50;
//3：为海葵构造函数添加方法init  第一次为韩魁变量赋值
AneObj.prototype.init=function(){
    //console.log(2);
    //创建循环遍历所有海葵赋值操作
    for(var i=0;i<this.num;i++){
        this.rootX[i]=i*16+Math.random()*20;//画布宽度800px/num50=16  赋值起点x
        this.headX[i]=this.rootX[i];//赋值终点x   初始值相同   最开始的时候海葵是一条直线
        this.headY[i]=canHeight-200+Math.random()*50;//赋值终点y
        this.amp[i]=20+Math.random()*30;//海葵左右摆动幅度
    }
    //console.log(this);
}
//4：为海葵构造函数添加方法draw   依据海葵数据绘制海葵图形
AneObj.prototype.draw=function(){
    //console.log(3);
    this.alpha+=12*0.0008;//12为浏览器刷新一次绘制完所有图形的时间  0.0008经验值
    var p=Math.sin(this.alpha);//为了摆动的速度能慢点
    //console.log(p);//-1   -0.9  -0.8.......0  0.1  0.2.......1
    
    //4.1:保存画笔2状态  一个画布上有很多内容   避免冲突
    ctx2.save();
    ctx2.strokeStyle="#3b154e";//为画笔2赋值边线颜色
    ctx2.globalAlpha=0.5;//为画笔设置0.5的透明度
    ctx2.lineWidth=20;//为画笔2设置边线的宽度
    ctx2.lineCap="round";//为画笔2设置线段顶端的样式    圆角
    //4.5：创建循环遍历所有海葵
    for(var i=0;i<this.num;i++){
        //4.6:开始绘制一条新路径
        ctx2.beginPath();
        ctx2.moveTo(this.rootX[i],canHeight);//起点
        //4.7:重新计算终点坐标
        this.headX[i]=this.rootX[i]+p*this.amp[i];//amp摆动幅度  p向左摆或者向右摆
        //4.8：绘制一条贝塞尔曲线
        ctx2.quadraticCurveTo(this.rootX[i],canHeight-100,this.headX[i],this.headY[i]);
        //4.9：描边
        ctx2.stroke();
    }
        //4.10:恢复画笔2状态
        ctx2.restore();
}

//功能三：大鱼
//1：创建大鱼的构造函数   MomObj
var MomObj=function(){
    //console.log(1);
    this.x;//大鱼位置
    this.y;
    this.angle;//大鱼游动的角度
    this.bigEye=[];//2张图  0{睁眼图片3s}  1{闭眼图片0.5s}
    this.bigBody=[];//8张图  0~7
    this.bigTail=[];//8张图  0~7

    //添加三个变量   控制大鱼眼睛图片切换
    this.bigEyeIdx=0;//眼睛图片的下标   0睁着   1闭着
    this.bigBodyIdx=0;
    this.bigTailIdx=0;
    this.bigEyeStart=0;//计时开始
    this.bigBodyStart=0;
    this.bigTailStart=0;
    this.bigEyeEnd=3000;//计时结束
    this.bigBodyEnd=3000;
    this.bigTailEnd=10;
}
//2:为大鱼构造函数添加初始化方法  init
MomObj.prototype.init=function(){
    //console.log(2);
    //大鱼初始化在画布中心位置
    this.x=canWidth*0.5;
    this.y=canHeight*0.5;
    //大鱼角度0
    this.angle=0;
    //创建循环创建大鱼眼睛图片  2张  0 3s  1 0.5s
    //src/bigEye0.png  bigEye1.png
    for(var i=0;i<2;i++){//i=0  1
        this.bigEye[i]=new Image();
        this.bigEye[i].src=`images/src/bigEye${i}.png`;
    }
    //创建循环创建大鱼身体图片  8张  1s24张图片（极限）
    //src/bigSwim0.png...bigSwim7.png
    for(var i=0;i<8;i++){
        this.bigBody[i]=new Image();
        this.bigBody[i].src=`images/src/bigSwim${i}.png`;
    }
    //创建循环创建大鱼尾巴图片
    for(var i=0;i<8;i++){
        this.bigTail[i]=new Image();
        this.bigTail[i].src=`images/src/bigTail${i}.png`;
    }
    //console.log(this);
}
//3:为大鱼构造函数添加绘制方法  draw
MomObj.prototype.draw=function(){
    //console.log(3);
    //3.1:为大鱼指定位置  鼠标的x，大鱼的x，速度   让大鱼慢慢的游向鼠标位置
    this.x=lerpDistance(mx,this.x,0.98);//draw()方法在gameloop中执行
    this.y=lerpDistance(my,this.y,0.99);
    //通用公式：修改大鱼游戏角度公式：
    //让大鱼游戏角度修改为鼠标角度
    //（1）获取大鱼与鼠标位置差（距离）
    var deltaX=mx-this.x;
    var deltaY=my-this.y;
    //(2）依据位置差计算角度差           180度
    var beta=Math.atan2(deltaY,deltaX)+Math.PI;
    //(3)修改大鱼角度慢慢向鼠标靠近
    //3.2：为大鱼指定角度 角度差，当前角度，转换角度的速度
    this.angle=lerpAngle(beta,this.angle,0.9);
    //3.2.1:累计大鱼眼睛的开始时间
    this.bigEyeStart+=10;
    this.bigBodyStart+=10;
    this.bigTailStart+=10;
    //3.2.2:如果开始计时时间大于结束时间
    if(this.bigEyeStart>this.bigEyeEnd){
        //3.2.3:切换下标
        this.bigEyeIdx=(this.bigEyeIdx+1)%2;
        //3.2.4:清空开始时间
        this.bigEyeStart=0;
        if(this.bigEyeIdx==1){//1大鱼闭眼睛
            this.bigEyeEnd=300;//结束时间  300  快
        }
        if(this.bigEyeIdx==0){//0大鱼睁眼睛
            this.bigEyeEnd=3000;//结束时间  3000慢
        }
    }
    //console.log(this.bigEyeIdx);
     //3.2.2:如果开始计时时间大于结束时间
     if(this.bigBodyStart>this.bigBodyEnd){
        //3.2.3:切换下标
        this.bigBodyIdx=this.bigBodyIdx+1;
        if(this.bigBodyIdx>=8){
            this.bigBodyIdx=0;
        }
        //3.2.4:清空开始时间
        this.bigBodyStart=0;
    }
    //console.log(this.bigBodyIdx);
    //3.2.2:如果开始计时时间大于结束时间
    if(this.bigTailStart>this.bigTailEnd){
        //3.2.3:切换下标
        this.bigTailIdx=this.bigTailIdx+1;
        if(this.bigTailIdx>=8){
            this.bigTailIdx=0;
        }
        //3.2.4:清空开始时间
        this.bigTailStart=0;
    }
    //console.log(this.bigTailIdx);

    //3.3：保存画笔1状态
    ctx1.save();
    //3.4:移动画布原点到大鱼位置
    ctx1.translate(this.x,this.y);
    //3.5:设置旋转角度
    ctx1.rotate(this.angle);
    //3.6:画大鱼的身体  盖在一起会覆盖   绘制图片的中心位置是画布的原点
    ctx1.drawImage(this.bigBody[this.bigBodyIdx],
        0-this.bigBody[this.bigBodyIdx].width*0.5,
        0-this.bigBody[this.bigBodyIdx].height*0.5);
    //3.7：画大鱼的尾巴
    ctx1.drawImage(this.bigTail[this.bigTailIdx],
        0-this.bigTail[this.bigTailIdx].width*0.5+30,
        0-this.bigTail[this.bigTailIdx].height*0.5);
    //3.8：画大鱼的眼睛
    ctx1.drawImage(this.bigEye[this.bigEyeIdx],
        0-this.bigEye[this.bigEyeIdx].width*0.5,
        0-this.bigEye[this.bigEyeIdx].height*0.5);
    //3.9:恢复状态
    ctx1.restore();
}

//功能四：食物  30个
//1：创建食物的构造函数
var FruitObj=function(){
    //console.log(1);
    this.x=[];//食物位置  30个
    this.y=[];
    this.spd=[];//食物向上飘的速度   -5  -1
    this.orange;//橙色食物图片
    this.blue;//蓝色食物图片
    this.fruitType=[];//食物类型   0橙色  1蓝色
}
//2:为食物的构造函数添加初始化方法init
FruitObj.prototype.init=function(){
    //console.log(2);
    //2.1：赋值图片对象
    this.orange=new Image();
    this.orange.src="images/src/fruit.png";
    this.blue=new Image();
    this.blue.src="images/src/blue.png";
    //2.2:创建循环赋值x  y  spd  fruitType
    for(var i=0;i<this.num;i++){
        //赋值每个食物的位置   x平均值    y画布底部   canWidth/this.num每个食物的平均间距
        this.x[i]=i*canWidth/this.num+Math.random()*10;
        this.y[i]=canHeight;
        this.spd[i]=1+Math.random()*5;//向上飘的速度
        this.fruitType[i]=Math.random()<0.9?1:0;//1蓝色食物多   0橙色食物少
    }
    //console.log(this);
}
//3:为食物的构造函数添加绘制方法draw
FruitObj.prototype.draw=function(){
    //console.log(3);
    //3.1：创建循环遍历食物
    for(var i=0;i<this.num;i++){
        //3.2:判断食物的类型  1蓝色  0橙色
        if(this.fruitType[i]==1){
            var pic=this.blue;
        }else{
            var pic=this.orange;
        }
        //3.3:当前食物y减去速度   向上飘
        this.y[i]-=this.spd[i]*0.07;//速度  1-5  如果速度太快*0.017
        //3.4：画食物
        ctx1.drawImage(pic,this.x[i],this.y[i]);
        //3.5:如果食物y<0  飘出屏幕  再次将食物的y=600
        if(this.y[i]<0){
            this.y[i]=canHeight;
        }
    }
}
FruitObj.prototype.num=30;

//功能五：分数
//1：分数构造函数   吃蓝色食物100分    吃橙色食物200分
var DataObj=function(){
    this.score=0;
}
//2:为分数构造函数添加绘制方法
DataObj.prototype.draw=function(){
    //1:保存画笔1状态   怕元素之间相互影响
    ctx1.save();
    //2:设置文字颜色
    ctx1.fillStyle="#fff";
    //3:设置文字大小
    ctx1.font="35px Verdana";
    //4:设置文本居中
    ctx1.textAlign="center";
    //5:绘制
    ctx1.fillText("SCORE:"+this.score,canWidth*0.5,canHeight-500);
    //6:恢复画笔1状态
    ctx1.restore();
}

//功能五：大鱼吃食物长分
function collision(){
    //l功能：完成大鱼与食物碰撞检测
    // console.log(123);
    //1:创建循环遍历每个食物
    for(var i=0;i<fruit.num;i++){
        //2:计算大鱼与食物之间距离  commonFunction/js/
        //calLength2()  写的不完整少写了根号   大鱼只有一条
        var p=calLength2(fruit.x[i],fruit.y[i],mom.x,mom.y);//计算两点之间距离
        //3：如果大鱼与食物之间距离<900->30  像素
        if(p<900){//实现两点之间差30像素   开根号
            //4：表示食物被吃掉   食物隐藏  y=canHeight
            fruit.y[i]=canHeight;//隐藏
            //5：                 长分
            if(fruit.fruitType[i]==1){//吃蓝色食物
                data.score+=100;//每次加100分
            }else{
                data.score+=200;//每次加200分
            }
            //6：在gameloop调用collision函数
        }
    }
}
