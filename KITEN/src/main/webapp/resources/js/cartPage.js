$(document).ready(function () {

// each의 첫 번째 입력매개변수: 배열의 순서 번호 / 두 번째 입력매개변수: 배열의 값
$(".p_price").each(function(index,el){
    let price = el.dataset.price*1;
    $(".p_price")[index].innerText = price.toLocaleString();
    let quantity = $(".cartQuantity")[index].value*1;
    $(".sumPrice")[index].dataset.sumprice = price * quantity;
//    let sumPrice = $(".sumPrice")[index].dataset.sumprice*1;
    $(".sumPrice")[index].innerText = ($(".sumPrice")[index].dataset.sumprice*1).toLocaleString();
    }); // .p_price.each
    
realSumPriceUpdate();
 
}); // document.ready

let realSumPrice = 0;      

function realSumPriceUpdate(){  
realSumPrice = 0;  
for( let i=0; i<$(".sumPrice").length ; i++){
realSumPrice += $(".sumPrice")[i].dataset.sumprice * 1;}
$(".realSumPrice")[0].dataset.realsumprice = realSumPrice;
$(".realSumPrice")[0].innerText = (realSumPrice*1).toLocaleString();

if ($(".realSumPrice")[0].dataset.realsumprice > 50000) {
	$(".shippingFee")[0].dataset.shippingfee = 0;
	$(".shippingFee")[0].innerText = ($(".shippingFee")[0].dataset.shippingfee*1).toLocaleString();
 } else {
 	$(".shippingFee")[0].dataset.shippingfee = 3000;
	$(".shippingFee")[0].innerText = ($(".shippingFee")[0].dataset.shippingfee*1).toLocaleString();
 }
$(".paymentPrice")[0].dataset.paymentprice = $(".shippingFee")[0].dataset.shippingfee*1 + $(".realSumPrice")[0].dataset.realsumprice*1;
$(".paymentPrice")[0].innerText = ($(".paymentPrice")[0].dataset.paymentprice*1).toLocaleString();
 
}

$(function(){

// 증가 버튼 눌렀을 때
$('.increase').click(function() {
// 결과를 표시할 input 태그 소환
const resultElement = $(this).prev();
// 현재 화면에 표시된 값
let number = resultElement.val();
// 숫자형 변환 후 1 증가
number = parseInt(number) + 1;
// 증가한 값을 input 태그에 넣기
resultElement.val(number);
$(this).parent().find(".cartQuantity").change();
}); // .increase click

// 감소 버튼 눌렀을 때
$('.reduced').click(function() {
// 결과를 표시할 input 태그 소환
const resultElement = $(this).next();
// 현재 화면에 표시된 값
let number = resultElement.val();
// 숫자형 변환 후 1 감소
if ( parseInt(number) > 1) {
number = parseInt(number) - 1;}
// 감소된 값을 input 태그에 넣기
resultElement.val(number);
$(this).parent().find(".cartQuantity").change();
}); // .reduced click


/*
 * 장바구니 수량 변경시
 */
$(".cartQuantity").change(function(){
// 해당 상품 가격
let p_price = $(this).parent().parent().parent().find(".p_price").data('price') * 1;
// 해당 상품 수량
let quantity = $(this).parent().find(".cartQuantity").val() * 1;
// 가격 * 개수 = 해당 상품 총 금액
let sumPrice = p_price * quantity;

// data-sumprice 속성에 값 넣고 천 단위 콤마 찍어 화면에 보이게 출력
$(this).parent().parent().parent().find(".sumPrice").data('sumprice', sumPrice);
$(this).parent().parent().parent().find(".sumPrice").text(($(this).parent().parent().parent().find(".sumPrice").data('sumprice')*1).toLocaleString());

// 화면 최하단에 출력되는 총 상품 금액 합계를 변경하는 메서드 호출
updateRealSumPriceUpdate();

// 수량 변경 버튼 클릭 시 카트 DB의 수량 정보도 변경
$.ajax({
type: "post",
url: "/KITEN/cart/updateCartQuantity",
data: {
	m_number : $(this).attr('data-user'),
	p_number : $(this).attr('data-value'),
	c_quantity: $(this).val() * 1
},
success: function(result){}, // success
error: function(err){alert("error"); console.log(err); }
}); // ajax


}); // cartQuantity.change


let changedRealSumPrice = 0;      
// 화면 최하단에 출력되는 총 상품 금액 합계를 변경하는 메서드
function updateRealSumPriceUpdate(){  
changedRealSumPrice = 0;  

//for( let i=0; i<$(".sumPrice").length ; i++){
//changedRealSumPrice += $(".sumPrice")[i].dataset.sumprice * 1;

$('.sumPrice').each(function(){
	changedRealSumPrice += $(this).data('sumprice');
});

$(".realSumPrice")[0].dataset.realsumprice = changedRealSumPrice;
$(".realSumPrice")[0].innerText = (changedRealSumPrice*1).toLocaleString();

if ($(".realSumPrice")[0].dataset.realsumprice > 50000) {
	$(".shippingFee")[0].dataset.shippingfee = 0;
	$(".shippingFee")[0].innerText = ($(".shippingFee")[0].dataset.shippingfee*1).toLocaleString();
 } else {
 	$(".shippingFee")[0].dataset.shippingfee = 3000;
	$(".shippingFee")[0].innerText = ($(".shippingFee")[0].dataset.shippingfee*1).toLocaleString();
 }
 $(".paymentPrice")[0].dataset.paymentprice = $(".shippingFee")[0].dataset.shippingfee*1 + $(".realSumPrice")[0].dataset.realsumprice*1;
$(".paymentPrice")[0].innerText = ($(".paymentPrice")[0].dataset.paymentprice*1).toLocaleString();
} // end of updateRealSumPrice


// 총 상품 금액이 50000원 이하이면 배송비 3000원 / 이상이면 배송비 0원
function inputShippingFee (){
if ($(".realSumPrice")[0].dataset.realsumprice > 50000) {
	$(".shippingFee")[0].dataset.shippingfee = 0;
	$(".shippingFee")[0].innerText = ($(".shippingFee")[0].dataset.shippingfee*1).toLocaleString();
 } else {
 	$(".shippingFee")[0].dataset.shippingfee = 3000;
	$(".shippingFee")[0].innerText = ($(".shippingFee")[0].dataset.shippingfee*1).toLocaleString();
 } 
$(".paymentPrice")[0].dataset.paymentprice = $(".shippingFee")[0].dataset.shippingfee*1 + $(".realSumPrice")[0].dataset.realsumprice*1;
$(".paymentPrice")[0].innerText = ($(".paymentPrice")[0].dataset.paymentprice*1).toLocaleString();
 } // inputShippingFee
	
 }); // end of $(function)