$(document).ready(function(){
  $('.slider').slick({
    dots: false,
    arrows: false,
	  infinite: true,
	  speed: 300,
	  slidesToShow: 1,
	  centerMode: true,
	  variableWidth: true
  });
});