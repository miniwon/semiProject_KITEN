 $(function(){
// 상세 페이지에서 장바구니에 넣었을 때
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
	
// 상세 페이지에서 찜 목록에 넣었을 때
$('#addWish').click(function(){
$.ajax({
type: "post",
url: "/KITEN/cart/addWish",
data: $("#addCartForm").serialize(),
success: function(result){ 

if(result == 'fail'){
					alert("이미 찜하신 상품입니다");
				} else if(result == 'success'){
					alert("찜 목록에 [ " + $('#p_name').val() + " ] 추가되었습니다");}

}, // success
error: function(err){alert("error"); console.log(err); }
}); // ajax
	}); // addCart.click

// 목록 페이지에서 장바구니에 넣었을 때
$('.ti-shopping-cart').click(function(){
let form = {
	m_number : $(this).attr('data-user'),
	p_number : $(this).attr('data-value'),
	c_quantity : 1
}

let p_name = $(this).attr('data-pname');

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
	}); // ti-shopping-cart.click
	
// 목록 페이지에서 찜 목록에 넣었을 때
$('.ti-heart').click(function(){
let form = {
	m_number : $(this).attr('data-user'),
	p_number : $(this).attr('data-value')
}

let p_name2 = $(this).attr('data-pname');

$.ajax({
type: "post",
url: "/KITEN/cart/addWish",
data: form,
success: function(result){ 

if(result == 'fail'){
					alert("이미 찜하신 상품입니다");
				} else if(result == 'success'){
					alert("찜 목록에 [ " + p_name2 + " ] 추가되었습니다");}

}, // success
error: function(err){alert("error"); console.log(err); }
}); // ajax
	}); // ti-shopping-cart.click
	
	
 }) // end of $(function)