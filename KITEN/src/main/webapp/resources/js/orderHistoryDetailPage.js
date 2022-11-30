$(document).ready(function () {

// 처음 로딩될 때 개당 가격*수량으로 상품당 합계 금액 구하기
// each의 첫 번째 입력매개변수: 배열의 순서 번호 / 두 번째 입력매개변수: 배열의 값
$(".p_sumprice").each(function(index,el){
    let price = el.dataset.price*1;
    let quantity = el.dataset.quantity*1;
    let sumprice = price * quantity;
    $(".p_sumprice")[index].innerText = sumprice.toLocaleString();
    }); // .p_sumprice.each
    
$("#o_sumprice").text(($("#o_sumprice").data("sumprice")*1).toLocaleString());
$("#o_shippingfee").text(($("#o_shippingfee").data("shippingfee")*1).toLocaleString());
$("#o_payment").text(($("#o_payment").data("payment")*1).toLocaleString());
$("#o_sumprice2").text(($("#o_sumprice2").data("sumprice")*1).toLocaleString());
$("#o_shippingfee2").text(($("#o_shippingfee2").data("shippingfee")*1).toLocaleString());
$("#o_payment2").text(($("#o_payment2").data("payment")*1).toLocaleString());

}); // document.ready