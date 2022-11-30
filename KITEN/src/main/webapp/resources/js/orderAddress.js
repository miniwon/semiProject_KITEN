$(function(){
	$('.locationCheckbox').click(function() {
		$("#l_name", opener.document).text($(this).data("name"));
		$("#l_tel", opener.document).text($(this).data("tel"));
		$("#l_address1", opener.document).text($(this).data("add1"));
		$("#l_address2", opener.document).text($(this).data("add2"));
//		$("#l_number", opener.document).val($(this).data("locationnumber"));
		opener.document.getElementById("l_number").value = $(this).data("locationnumber");
	window.close();
    });
	
}) // end of $(function)