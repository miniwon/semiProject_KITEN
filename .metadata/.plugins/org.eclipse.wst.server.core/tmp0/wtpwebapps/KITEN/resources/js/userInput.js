$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#m_confirm').click(function(){
    	if( $.trim($("#m_id").val()) == '' ){
            alert("아이디를 입력해 주세요");
            $("#m_id").focus();
            return;
        }
    	
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
    	
    	
    	if($.trim($('#m_name').val())==''){
    		alert("이름을 입력해 주세요");
    		$('#m_name').focus();
    		return;
    	}
    	
    	 if($.trim($('#m_email').val())==''){
    		alert("이메일을 입력해 주세요");
    		$('#m_email').focus();
    		return;
    	}

    	if($.trim($('#m_tel').val())==''){
    		alert("전화번호를 입력해 주세요");
    		$('#m_tel').focus();
    		return;
    	}
 
     	if($.trim($('#m_address1').val())==''){
    		alert("주소를 입력해 주세요");
    		$('#m_address1').focus();
    		return;
    	}

    	if($.trim($('#m_address2').val())==''){
    		alert("상세 주소를 입력해 주세요");
    		$('#m_address2').focus();
    		return;
    	}
    	
     	if($('#m_agree').is(':checked') == false){
  		alert("이용 약관에 동의해 주세요");
    		return;
    	}
    	       
        // 모든 검사 통과시 자료 전송
        document.userinput.submit();   	
	});
	
	//아이디 중복체크 -> 추후에는 [아이디 중복 화인] 버튼 클릭으로 변경
	
	$('#m_check').click(function(){
	        $.ajax({
        	url			: 'idCheck.do',
        	data		: { m_id: $('#m_id').val() },
        	// dataType	: 주로 'json/xml',
        	contentType	: 'application/x-www-form-urlencoded;charset=utf-8',
        	success		: checkId,
        	error		: function(err){
        	alert('error');
        	console.log(err);
        	}
        }); 
       function checkId(result){
       
       alert(result);
       
       } // end of checkId
	}); // click
	
}) // end of $(function)