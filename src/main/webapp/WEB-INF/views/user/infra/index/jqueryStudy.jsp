<%--
  Created by IntelliJ IDEA.
  User: andohyeong
  Date: 10/5/23
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<head>
    <title>Title</title>
    <style>
        .addClass{
            color: blue;
        }
    </style>
</head>
<body>
<h1>
  jquery study
</h1>
<ul>
    <li>
      <p class="add">add 1</p>
    </li>
    <li>
        <p id="addClass">addClass</p>
    </li>
    <li>
        <p id="after">after</p>
    </li>
    <li>
        <p id="append">append</p>
    </li>
    <li>
        <p id="attr">attr</p>
    </li>
    <li>
        <p id="before">before</p>
    </li>
    <li>
        <p id="bind">bind</p>
    </li>
    <li>
        <input id="blur" placeholder="blur">
    </li>
    <li>
        <select name="change" id="change">
            <option value="">--- 선택하세요 ---</option>
            <option value="http://www.naver.com">네이버</option>
            <option value="http://www.daum.net">다음</option>
            <option value="http://www.google.com">구글</option>
        </select>
    </li>
    <li>
        <input type="checkbox" name="check1">
    </li>
    <li>
        <p id="clone">
            clone click
        </p>
    </li>
    <li>
        <p id="empty">
            empty
        </p>
    </li>
    <li>
        <ul id="eq">
            <li>a</li>
            <li><span>b</span></li>
            <li>c</li>
        </ul>
    </li>
    <li id="is">
        <span id="isRed">is</span>
    </li>
    <li>
        <input type="text" id="keydown">
    </li>
    <li>
        <p>prev</p>
        <p id="prev">no</p>
        <p>no</p>
    </li>
    <li>
        <a id="prop" href="propTest">
            prop
        </a>
    </li>
    <li>
        <h2 class="replaceAll">a</h2>
        <h2 class="replaceAll">b</h2>
        <h2 class="replaceAll">c</h2>
    </li>
    <li>
        <p id="resize">resize</p>
    </li>
    <li>
        <ul id="slice">
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>5</li>
            <li>6</li>
        </ul>
    </li>
    <li>
        <h1 id="text">text</h1>
    </li>
    <li>
        <p><input type="text" id="val"> <button id="valButton">Click</button></p>
    </li>
    <li>
        <ul id="toArray">
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>5</li>
            <li>6</li>
        </ul>
    </li>
</ul>
</body>

<script>


$(".add").add('.add p').css('color' , 'red');

$("#addClass").addClass("addClass");

$("#after").after('<p>after2</p>');

$("#append").append(' appended');

$('<p>appendTo<p>').appendTo("#append");

$("#attr").attr('title', 'attr');

$("#before").before('<p>before2</p>')


$("#bind").bind('click', function(){
   alert("bind 사용 클릭 이벤트")
});

$("#blur").on("focus", function (){
    console.log("focus")
    $(this).css({"background-color":"red"});

});

$("#blur").on("blur", function(){
    console.log("blur")
    $(this).css({"background-color":"black"});
});

$("#change").on('change', function(){
    let val = $("#change >option:selected").attr('value');

    if(!val){
        alert("선택된 항목이 없습니다.");
        return false;
    }
    window.open(val);
});

$('input:checkbox[name="check1"]').each(function() {
    console.log("1")
    this.checked = true; //checked 처리
    console.log("2")
    if(this.checked){//checked 처리된 항목의 값
        console.log("3")
        alert(this.value);

    }
});

$("#clone").on('click', function (){
   $("#clone").clone().appendTo(this)
});


$("#empty").empty()

let eqData = $("#eq li").eq(0);
console.log("eq : "+ eqData.text());

$("#eq").find('span').css("color", "red");

if($("#is span").is("span")){
    $("#isRed").css("color", "red");
}

$("#keydown").keydown(function (e){
    alert(e.keyCode);
});

$("#prev").prev().css("color", "red");


let propData = $("#prop").prop('href');
console.log("prop : " + propData);

$("<h4>replaceAll</h4>").replaceAll(".replaceAll")

$( window ).resize( function() {
    $("#resize").css("color", "red");
});

$("#slice li").slice( -5, -1 ).css("color",  "blue")

let textData = $("#text").text();
console.log("text : " + textData);

$( document ).ready( function (){
    $('button#valButton').click(function (){
   var valData = $('input#val').val();
   alert(valData);
    })
});

let toArrayData = $("#toArray li").toArray().toString();
console.log( toArrayData)












</script>
</html>
