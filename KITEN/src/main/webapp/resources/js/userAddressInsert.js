$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#l_submit').click(function(){
    	if( $.trim($("#l_name").val()) == '' ){
            alert("수신인 이름을 입력해 주세요");
            $("#l_name").focus();
            return;
        }
    	
    	if($.trim($('#l_tel').val())==''){
    		alert("수신인 전화번호를 입력해 주세요");
    		$('#l_tel').focus();
    		return;
    	}
    	
    	if($.trim($('#l_address1').val())==''){
    		alert("주소를 입력해 주세요");
    		$('#l_address1').focus();
    		return;
    	}
    	
    	 if($.trim($('#l_address2').val())==''){
    		alert("상세 주소를 입력해 주세요");
    		$('#l_address2').focus();
    		return;
    	}
    	       
        // 모든 검사 통과시 자료 전송
        document.userAddressInsert.submit();   	
	});
	
}) // end of $(function)