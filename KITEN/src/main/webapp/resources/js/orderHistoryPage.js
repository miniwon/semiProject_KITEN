$(document).ready(function () {

// 처음 로딩될 때 천 단위 기호
$(".o_payment").each(function(index,el){
    let price = el.dataset.payment*1;
    $(".o_payment")[index].innerText = price.toLocaleString();
    }); // .p_price.each
 
}); // document.ready
