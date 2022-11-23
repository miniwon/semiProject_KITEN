 $(function(){
	$('#addCart').click(function(){
$.ajax({
type: "post",
url: "/KITEN/cart/addCart",
data: $("#addCartForm").serialize(),
success: function(result){ 

if(result == '0'){
					alert("장바구니에 추가 하지 못하였습니다");
				} else if(result == '1'){
					alert("장바구니에 추가되었습니다");
				}

}, // success
error: function(err){alert("error"); console.log(err); }
}); // ajax
	}); // addCart.click
	
 }) // end of $(function)