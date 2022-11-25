$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#d_confirm').click(function(){

    	
    	if($.trim($('#m_password').val())==''){
    		alert("비밀번호를 입력해 주세요");
    		$('#m_password').focus();
    		return;
    	}
    	
    	if($.trim($('#m_password').val()) != $.trim($('#m_confirmPassword').val())){
    		alert("비밀번호가 일치하지 않습니다");
    		$('#m_confirmPassword').focus();
    		return;
    	}
    	
    	if($("#m_password").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				
					
    	

    	
    	       
        // 모든 검사 통과시 자료 전송
        document.userRemove.submit();   	

	
	}); // click
	

	
}) // end of $(function)