$(document).ready(function () {

// each의 첫 번째 입력매개변수: 배열의 순서 번호 / 두 번째 입력매개변수: 배열의 값
$(".p_price").each(function(index,el){
    let price = el.innerText*1;
    let quantity = $(".cartQuantity")[index].value*1;
    $(".sumPrice")[index].innerText = price * quantity;
    }); // .p_price.each
    
    
let realSumPrice = 0;  

alert($(".sumPrice").length);

for( let i=0; i<$(".sumPrice").length ; i++){
realSumPrice += $(".sumPrice")[i].innerText * 1;
}

alert(realSumPrice);

$(".realSumPrice")[0].innerText = (realSumPrice*1).toLocaleString();

}); // document.ready

 $(function(){



$('.increase').click(function() {
// 결과를 표시할 input 태그 소환
const resultElement = $(this).prev();

// 현재 화면에 표시된 값
let number = resultElement.val();

number = parseInt(number) + 1;

resultElement.val(number);

}); // .increase click


$('.reduced').click(function() {
// 결과를 표시할 input 태그 소환
const resultElement = $(this).next();

// 현재 화면에 표시된 값
let number = resultElement.val();

if ( parseInt(number) > 1) {
number = parseInt(number) - 1;
}

resultElement.val(number);

}); // .reduced click


	
	
	
 }) // end of $(function)