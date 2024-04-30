$(document).ready(() => {
	$('#id').focusout(e => {
		if($('#id').val() === "") {
			$('#error-msg-id').show();
			$('#id').css('border', 'solid 1px toamto');
		} else {
			$('#error-msg-id').hide();
			$('#id').css('border', 'solid 1px lightgrey');
			$('#id').css('border-bottom', 'none');
		}
	});

	$('#password').focusout(e => {
		if ($('#password').val() === "") {
			$('#error-msg-password').show();
			$('#password').css('border', 'solid 1px toamto');
		} else {
			$('#error-msg-password').hide();
			$('#password').css('border', 'solid 1px lightgrey');
			$('#password').css('border-bottom', 'none');
		}
	});
		
	$('form').submit(e => {
		e.preventDefault();
		
		const id = $('#id').val();
		const password = $('#passwrord').val();
		
		// 유효성 검사
		let isValid = true;
		
		if(id === '') {
			isValid = false;
			$('#error-msg-id').show();
			$('#id').css('border', 'solid 1px toamto');
		} 
		if(password === '') {
			isValid = false;
			$('#error-msg-password').show();
			$('#password').css('border', 'solid 1px toamto');
		}

		if(isValid) {
			e.target.submit();
		}
	});	
})