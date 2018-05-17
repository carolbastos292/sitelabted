$(function(){

	var index = sessionStorage.getItem("ind");
	var id = sessionStorage.getItem("id");

	if(index == null){
		index = 1;
		id = "softwares";
	}
	
	$("#content div:nth-child("+index+")").show();
	$(".abas li div#"+id).addClass("selecionada");

	sessionStorage.clear();

	$(".aba").hover(
    function(){$(this).addClass("ativa")},
    function(){$(this).removeClass("ativa")}
	);


	$(".aba").click(function(){
	    $(".aba").removeClass("selecionada");
	    $(this).addClass("selecionada");

	    var indice = $(this).parent().index();
	    indice++;
	    $("#content div").hide();
	    $("#content div:nth-child("+indice+")").show();

	    if (indice==1) {
	    	$('.software').css("display","inline");
	    }else if (indice==2) {
	    	$('.jogo').css("display","");
	    }else if (indice==3) {
	    	$('.manual').css("display","");
	    }
	});

});