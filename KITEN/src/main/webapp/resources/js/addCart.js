 $(function(){
	$('#addCart').click(function(){
$.ajax({
type: "post",
url: "/KITEN/cart/addCart",
data: $("#addCartForm").serialize(),
success: function(result){ 

if(result == 'fail'){
					alert("장바구니에 추가하지 못하였습니다");
				} else if(result == 'success'){
					alert("장바구니에 [ " + $('#p_name').val() + " ] " + $('#c_quantity').val() + " 개가 추가되었습니다");}

}, // success
error: function(err){alert("error"); console.log(err); }
}); // ajax
	}); // addCart.click


$('.ti-shopping-cart').click(function(){
let form = {
	m_number : $(this).attr('data-user'),
	p_number : $(this).attr('data-value'),
	c_quantity : 1
}

let p_name = $(this).attr('data-pname');

console.log(form);

$.ajax({
type: "post",
url: "/KITEN/cart/addCart",
data: form,
success: function(result){ 

if(result == 'fail'){
					alert("장바구니에 추가하지 못하였습니다");
				} else if(result == 'success'){
					alert("장바구니에 [ " + p_name + " ] " + "1 개가 추가되었습니다");}

}, // success
error: function(err){alert("error"); console.log(err); }
}); // ajax
	}); // addCart.click
	
	
 }) // end of $(function)