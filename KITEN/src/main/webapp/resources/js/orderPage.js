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
$("#o_sumprice").val(realSumPrice);
 
if ($(".realSumPrice")[0].dataset.realsumprice > 50000) {
	$(".shippingFee")[0].dataset.shippingfee = 0;
	$(".shippingFee")[0].innerText = ($(".shippingFee")[0].dataset.shippingfee*1).toLocaleString();
	$("#o_shippingfee").val("0");
 } else {
 	$(".shippingFee")[0].dataset.shippingfee = 3000;
	$(".shippingFee")[0].innerText = ($(".shippingFee")[0].dataset.shippingfee*1).toLocaleString();
	$("#o_shippingfee").val("3000");
 }
$(".paymentPrice")[0].dataset.paymentprice = $(".shippingFee")[0].dataset.shippingfee*1 + $(".realSumPrice")[0].dataset.realsumprice*1;
$(".paymentPrice")[0].innerText = ($(".paymentPrice")[0].dataset.paymentprice*1).toLocaleString();
$("#o_payment").val($(".shippingFee")[0].dataset.shippingfee*1 + $(".realSumPrice")[0].dataset.realsumprice*1);
}


$(function(){
	// orderForm 입력 여부 확인
		$('#orderFormSubmit').click(function(){
			
		if($('input:radio[name=o_method]').is(':checked') == false){
		alert("결제 수단을 선택해 주세요");
		return;
		}
			
     	if($('#o_agree').is(':checked') == false){
  		alert("결제 필수 약관에 동의해 주세요");
    		return;
    	}
    	
        // 모든 검사 통과시 자료 전송
        document.orderForm.submit();   	
	});
	


}); // function()
 
 // ------------------------------------------------------ 까지 기본 화면 출력