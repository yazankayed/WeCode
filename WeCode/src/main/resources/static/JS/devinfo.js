$(document).ready(function (){

$('menu').click(function (){
    $(this).toggleClass('fa-time');
    $('header').toggleClass('toggle');
});
$(window).on('scroll load',function (){

    $('#menu').removeClass('fa-time');
    $('header').removeClass('toggle');

});

});