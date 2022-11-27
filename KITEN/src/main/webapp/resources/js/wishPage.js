$(document).ready(function () {

// each의 첫 번째 입력매개변수: 배열의 순서 번호 / 두 번째 입력매개변수: 배열의 값
$(".p_price").each(function(index,el){
    let price = el.dataset.price*1;
    $(".p_price")[index].innerText = price.toLocaleString();
    }); // .p_price.each

}); // document.ready


$(function(){

// 장바구니에 담기 클릭했을 때
$('.addCart').click(function(){
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
	}); // addCart.click


 }); // end of $(function)