$(function(){
    const curtain = $(".chatCurtain");
    const frame = $(".chatFrame");
    curtain.hide();
    frame.hide();
    $("#chat").on("click",function(){
        curtain.fadeToggle();
        frame.fadeToggle();
    });
});

