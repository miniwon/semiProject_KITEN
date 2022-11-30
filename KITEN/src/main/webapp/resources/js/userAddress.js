$(function(){
	 $('.locationDelete').click(function() {
	 	var l_number=$(this).data("locationnumber")
        var result = confirm("정말로 삭제하시겠습니까?");
        if(result) {
           //yes
            location.replace('userAddressDelete.do?l_number=' + $(this).data("locationnumber") + "&&m_number=" + $(this).data("mnumber"));
        } else {
            //no
        }
    });
	
}) // end of $(function)