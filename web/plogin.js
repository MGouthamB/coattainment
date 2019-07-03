$(document).ready(function () {
    var parameters = location.search.substring(1).split("&");
    var temp = parameters[0].split("=");
    var l = unescape(temp[1]);
    l=l.replace("+"," ");
    var temp = parameters[1].split("=");
    var p = unescape(temp[1]);
    for(i=0;i<6;i++)$('#'+i).hide();
    $.post("GetUserServlet",{usn:l,psw:p},function (d) {
        var a=d.split(",");var i;
        if(a[0]==="enter valid details"){
            alert("Invalid password bro!");
            window.location="index_5.html";
        }
        else if(a[0]==="error"){
            alert("Invalid user bro!");
            window.location="index_5.html";
        }
        else{
            $("#usern").html(l);
            $("#user").html(l);
        }
        });
    $("#sidem").hide();
    $("#bars").click(function (){
        $("#sidem").show();
        document.getElementById("main").style.marginLeft = "200px";
    });
    $("#cross").click(function () {
        $("#sidem").hide();
        document.getElementById("main").style.marginLeft = "0px";
    });
    $("#so").click(function(){
        window.location="index_5.html";
    });
});



