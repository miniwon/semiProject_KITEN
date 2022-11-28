$(document).ready(function () {

// 처음 로딩될 때 개당 가격*수량으로 상품당 합계 금액 구하기
// each의 첫 번째 입력매개변수: 배열의 순서 번호 / 두 번째 입력매개변수: 배열의 값
$(".sumPrice").each(function(index,el){
    let price = el.dataset.price*1;
    let quantity = el.dataset.quantity*1;
    $(".sumPrice")[index].dataset.sumprice = price * quantity;
    $(".sumPrice")[index].innerText = ($(".sumPrice")[index].dataset.sumprice*1).toLocaleString();
    }); // .p_price.each
    
realSumPriceUpdate();
 
}); // document.ready

let realSumPrice = 0;      
// 모든 상품 합계 금액 구하기
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

let realSumPriceSelect = 0;      
// 선택 상품 합계 금액 구하기
function realSumPriceSelectUpdate(){  
realSumPriceSelect = 0;  
for( let i=0; i<$(".sumPrice").length ; i++){
realSumPriceSelect += $(".sumPrice")[i].dataset.sumprice * 1;}
$(".realSumPriceSelect")[0].dataset.realsumprice = realSumPriceSelect;
$(".realSumPriceSelect")[0].innerText = (realSumPriceSelect*1).toLocaleString();

if ($(".realSumPriceSelect")[0].dataset.realsumprice > 50000) {
	$(".shippingFeeSelect")[0].dataset.shippingfee = 0;
	$(".shippingFeeSelect")[0].innerText = ($(".shippingFeeSelect")[0].dataset.shippingfee*1).toLocaleString();
 } else {
 	$(".shippingFeeSelect")[0].dataset.shippingfee = 3000;
	$(".shippingFeeSelect")[0].innerText = ($(".shippingFeeSelect")[0].dataset.shippingfee*1).toLocaleString();
 }
$(".paymentPriceSelect")[0].dataset.paymentprice = $(".shippingFeeSelect")[0].dataset.shippingfee*1 + $(".realSumPriceSelect")[0].dataset.realsumprice*1;
$(".paymentPriceSelect")[0].innerText = ($(".paymentPriceSelect")[0].dataset.paymentprice*1).toLocaleString();
 
}

$(function(){

let changedRealSumPrice = 0;      
// 전체 상품!! 화면 최하단에 출력되는 총 상품 금액 합계를 변경하는 메서드
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