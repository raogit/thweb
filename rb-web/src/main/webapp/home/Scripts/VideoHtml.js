///返回播放器代码
///swf    视频路径
///width  播放器宽度
///height 播放器高度
function Videohtml(swf, width, height) {
    var type = Navigator();  //返回客户端类型
    var html = "";
    if (type == "pc") { //PC端
        //html = '<embed src="/flv/flvplayer.swf" allowfullscreen="true" flashvars="vcastr_file=/UpFiles/' + swf + '&IsAutoPlay=1" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="' + width + '" height="' + height + '"></embed>';
        html = '<embed src="/flv/flvplayer.swf" allowfullscreen="true" flashvars="vcastr_file=/' + swf + '&IsAutoPlay=1" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="' + width + '" height="' + height + '"></embed>';
    } else {
        html = '<video id="example_video_1" class="video-js" width="' + width + '" height="' + height + '" autoplay controls preload="auto"><source src="/UpFiles/' + swf + '" type="video/mp4"; codecs="avc1.42E01E, mp4a.40.2" /></video>'
    }
    return html
};

///返回播放器代码(第三方视频)
///swf    视频路径
///width  播放器宽度
///height 播放器高度
function Videohtml_swf(swf, width, height) {
     var html = '<embed src="' + swf + '" allowFullScreen="true" quality="high" width="' + width + '" height="' + height + '" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>'
     return html
};

///得到客户端类型
function Navigator() {
    var type = "pc";
    if (navigator.userAgent.indexOf('iPad') != -1 || navigator.userAgent.indexOf('iPhone') != -1 || navigator.userAgent.indexOf('Android') != -1) {
        type = "iPad"
    }
    return type
};

/*
免费简单的flv视频播放器 Flvplayer.swf 可自动播放参数说明

vcastr_file 方法2传递影片flv文件地址参数，多个使用|分开 空

vcastr_title 影片标题参数，多个使用|分开，与方法2配合使用 空

vcastr_xml 方法3 传递影片flv文件地址参数，样板参考 vcastr.xml

IsAutoPlay 影片自动播放参数：0表示不自动播放，1表示自动播放 0

IsContinue 影片连续播放参数：0表示不连续播放，1表示连续循环播 1

IsRandom 影片随机播放参数：0表示不随机播放，1表示随机播放 0

DefaultVolume 默认音量参数 ：0-100 的数值，设置影片开始默认音量大小 100

BarPosition 控制栏位置参数 ：0表示在影片上浮动显示，1表示在影片下方显示 0

IsShowBar 控制栏显示参数 ：0表示不显示；1表示一直显示；2表示鼠标悬停时显示；3表示开始不显示，鼠标悬停后显示 2

BarColor 播放控制栏颜色，颜色都以0x开始16进制数字表示 0x000033

BarTransparent 播放控制栏透明度 60

GlowColor 按键图标颜色，颜色都以0x开始16进制数字表示 0x66ff00

IconColor 鼠标悬停时光晕颜色，颜色都以0x开始16进制数字表示 0xFFFFFF

TextColor 播放器文字颜色，颜色都以0x开始16进制数字表示 0xFFFFFF

LogoText 可以添加自己网站名称等信息(英文) 空

LogoUrl 可以从外部读取logo图片，注意自己调整logo大小，支持图片格式和swf格式 空

EndSwf 影片播放结束后,从外部读取swf文件，可以添加相关影片信息，影片分享等信息，需自己制作 空

BeginSwf 影片开始播放之前,从外部读取swf文件，可以添加广告，或者网站信息，需自己制作 空

IsShowTime 是否显示时间 : 0表示不显示时间，1表示显示时间 1

BufferTime 影片缓冲时间，单位（秒） 2
*/