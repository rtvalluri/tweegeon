function doCheck(){
	if($(this).val() != ''){
    	$('#sub').prop('disabled',false);
	}
	else{
	   	$('#sub').prop('disabled',true);
	}   
}
$(document).ready(function(){
	$('#user_name').keyup(doCheck).focusin(doCheck).focusout(doCheck);
});