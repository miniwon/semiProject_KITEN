$(document).ready(function () {

// each의 첫 번째 입력매개변수: 배열의 순서 번호 / 두 번째 입력매개변수: 배열의 값
$(".p_price").each(function(index,el){
    let price = el.innerText*1;
    let quantity = $(".cartQuantity")[index].value*1;
    $(".sumPrice")[index].innerText = price * quantity;
    }); // .p_price.each


let realSumPrice = 0;  

for( let i=0; i<$(".sumPrice").length ; i++){
$(".sumPrice")[i].innerText = $(".sumPrice")[i].innerText * 1;
// $(".sumPrice")[i].innerText = ($(".sumPrice")[i].innerText * 1).toLocaleString();
realSumPrice += $(".sumPrice")[i].innerText * 1;}

$(".realSumPrice")[0].innerText = (realSumPrice*1).toLocaleString();
}); // document.ready

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


$(".cartQuantity").change(function(){
let p_price = $(this).parent().parent().parent().find(".p_price").text() * 1;
let quantity = $(this).parent().find(".cartQuantity").val() * 1;
let sumPrice = p_price * quantity;

$(this).parent().parent().parent().find(".sumPrice").text(sumPrice);
});

	
	
 }); // end of $(function)