$(document).ready(function(){
  $('.slider').slick({
    dots: false,
	  infinite: true,
	  speed: 300,
	  slidesToShow: 1,
	  variableWidth: true,
	  nextArrow: '<i class="fas fa-angle-right"></i>',
	  prevArrow: '<i class="fas fa-angle-left"></i>'
  });

  $('.slick-slide').addClass('bg-white p-3 pb-5 mx-3 shadow shadow-hover');
  $('.slick-list').addClass('px-4 py-5')


  $('#fileInput').on('change',function(){
	  if($(this).get(0).files.length > 0){
	    var fileSize = $(this).get(0).files[0].size;
	    if (fileSize > 1000000){
	    	$('#fileInput').before("<div class='alert alert-danger'>Warning: Image is too large. Please resize to less than 1MB.</div>")
	    }
	  }
	});
});