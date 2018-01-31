$(document).ready(function(){
	//initCheck();
});	
function initCheck(){
/**
	  $('input').iCheck({
		    checkboxClass: 'icheckbox_flat-blue',
		    radioClass: 'iradio_flat-blue'
		  });	
	*/	
	
	  $('form').find('input').iCheck({
		    checkboxClass: 'icheckbox_square-blue',
		    radioClass: 'iradio_square-blue'
		  });
		 
}
function checkAll(e,gridname,colname){	
	//alert(e.checked);
	//$("#"+gridname+"_tbody").find("input[name='"+colname+"']:checkbox").attr('checked',e.checked);
	$("#"+gridname+"_tbody").find("input[name='"+colname+"']:checkbox").prop("checked", e.checked);
}