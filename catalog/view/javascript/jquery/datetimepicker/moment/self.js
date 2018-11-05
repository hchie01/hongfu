function tn(){
    var teln = document.getElementById('input-telephone');
    if(teln!=null ){
        return teln.value;
    }else{
        return false;
    }
}





var countdown=60;
function settime(tcb) {
    var tcb = document.getElementById('tcbut');
    if (countdown == 0) {
        tcb.disabled=false;
        tcb.value="获取验证码";
        countdown = 60;
        return false;
    } else {
        tcb.disabled=true;
        tcb.value ="重新发送(" + countdown + ")";
        countdown--;
    }
    setTimeout(function() {
        settime(tcb);
    },1000);
    $.ajax({
            url: 'index.php?route=account/register/telcap',
            type: 'post',
            data: {tm:countdown},
            // dataType:'json',
            success: function(data){
                // window.location.reload(true);
                console.log(data);
            },
            
            async: true
        });
}

function showHint(tcb)
{
    var xmlhttp;
    // if(tcb.length==0){
    //     document.getElementById('input-telephone').innerHTML='请输入手机号';
    //     return;
    // }
    // if(tcb.length!=11){
    //     document.getElementById('input-telephone').innerHTML='手机号格式有误';
    //     return;
    // }
    if(window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest();
    }else{
        xmlhttp = new ActiveXobject('Microsoft.XMLHTTP');
    }
    xmlhttp.onreadystatechange=function()
    {
        if(xmlhttp.readyState==4 && xmlhttp.status==200){
            document.getElementById('input-telephone').innerHTML=xmlhttp.responseTest;
        }

    }
    xmlhttp.open('GET','/catalog/controller/SmsDemo/SmsDemo/"'+str,true);
    xmlhttp.send();
    settime(tcb);
}