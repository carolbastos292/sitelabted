$(document).ready(function(){
	$(".click_softwares").click(function(){
	   sessionStorage.setItem("ind", 1);
	   sessionStorage.setItem("id", "softwares");
	});
	$(".click_jogos").click(function(){
	   sessionStorage.setItem("ind", 2);
	   sessionStorage.setItem("id", "jogos");
	});
	$(".click_manuais").click(function(){
	   sessionStorage.setItem("ind", 3);
	   sessionStorage.setItem("id", "manuais");
	});


	/* Pega a largura da tela */
	var width = screen.width;

	/* Obtém a altura do body */
	var body = $('body').innerHeight();

	/* Obtém a largura do body */
	var largBody = $('body').innerWidth();

	/* Obtém a altura do DIV geral */
	var divGeral = $('.geral').innerHeight();

	/* Obtém a altura do Container */
	var container = $('#geral').innerHeight();

	/* Condição que define onde ficará o Rodapé */
	if (container < body) {
		$('footer').css("top",body);
	}else{
		$('footer').css("top",divGeral);
	}

	/*Condição que define se irá esconder a seção O LabTEd */
	if(width <=760){
		$('.esconderQuemSomos').addClass('collapse');
	}else{
		$('.esconderQuemSomos').removeClass('collapse');
	}

	/* Condição que define se irá remover a class 'left-float' das imagens do Rodapé e assim centralizá-las na div */
	if (width <= 990) {
		$('.logoFooter').removeClass('float-left');
	}else{
		$('.logoFooter').addClass('float-left');
	}


var principal = {};

principal.start = function(){
  $('footer').css('position','static');
};

$(window).scroll(function(){   
  var s = $(document.body)[0].scrollHeight;
  var h = $(window).height();
  s > h ? $('footer').css('position','static') : $('footer').css('position','fixed');;
  $('footer').css('top',h); // PARA FIXAR O FOOTER NA PARTE INFERIOR DA PAGINA
});

principal.start();

	/* Função para verificar o clique nos projetos nas páginas de linhas de pesquisa e assim esconder ou não o texto-resumo do projeto */
	$target = $('.clicar');
	var number = 1;
	$target.each(function(){
		$(this).attr('id',number);
		number++;
	});

	$target2 = $('.textoProjeto');
	var num = 1;
	$target2.each(function(){
		$(this).attr('id','txtProjeto'+num);
		num++;
	});

	$('.clicar div').click(function(){
		id = $(this).parent().attr('id');

		$('#txtProjeto'+id).toggleClass('collapse');
		divGeral = $('.geral').innerHeight();
		$('footer').css("top",divGeral);
	});

	$('nav').css("width",largBody);

	/* Executa as linhas anteriores quando o tamanho da janela do browser é alterado com excessão da função clique */
	$(window).resize(function(){
		width = screen.width;

		body = $('body').innerHeight();

		divGeral = $('.geral').innerHeight();

		container = $('#geral').innerHeight();

		largBody = $('body').innerWidth();

		$('nav').css("width",width);

		if (container < body) {
			$('footer').css("top",body);
		}else{
			$('footer').css("top",divGeral);
		}

		if(width <=760){
			$('.esconderQuemSomos').addClass('collapse');
		}else{
			$('.esconderQuemSomos').removeClass('collapse');
		}

		if (width <= 990) {
			$('.logoFooter').removeClass('float-left');
		}else{
			$('.logoFooter').addClass('float-left');
		}
	});	
	
});



