$(document).ready(function(){
	$(document).on('click','.highlight',function(){
			var row = $(this).attr("data-row");
			var column = $(this).attr("data-col");
			
			$('tr.grid td').removeClass('addBorder');
			$(this).addClass('addBorder')

	});

		// for getting color value

	$(document).on("change","#colorPicker",function(){
		var colorval = $(this).val();
		$('.error').html("");
		if( colorval !== ""){
			if($('.addBorder').length === 1) {
					$('.addBorder').css({
					'background-color':colorval
				})
					// console.log(data_send)
			}else{
				$('.error').html("first select a square");
			}
			
		}
	});

	$("#colorPicker").on('hidePicker',function(e){
		var colorval = $(this).val();
		if(colorval !==""){
			if($('.addBorder').length === 1){
				var data_send = {
						row_n: $('.addBorder').attr("data-row"),
						col_n: $('.addBorder').attr("data-col"),
						color:colorval,
						username:localStorage.getItem("yourUserName")
					};
					saveColorData(data_send);
			}
		}
	});


function saveColorData(data_send){
	if(data_send){
		$.ajax({
			method:"POST",
			url:"/homes",
			data:{color:data_send},
			success:function(){

			},
			error:function(){

			}
		})
	}
}

});

