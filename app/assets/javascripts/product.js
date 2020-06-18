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

  $('#fileInput').on('change',function(){
	  if($(this).get(0).files.length > 0){
	    var fileSize = $(this).get(0).files[0].size;
	    if (fileSize > 1000000){
	    	$('#fileInput').before("<div class='alert alert-danger'>Warning: Image is too large. Please resize to less than 1MB.</div>")
	    }
	  }
	});
});