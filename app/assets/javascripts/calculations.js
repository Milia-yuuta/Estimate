$(document).on('change', '#price' ,function(){
  var data1 = $('.price1').val();
  var data2 = $('.price2').val();
  var data3 = $('.price3').val();
  var data4 = $('.price4').val();
  var data5 = $('.price5').val();
  var fee = (data1*data2*data3+parseInt(data4)+parseInt(data5))
  $('#price_form').val(fee)
  
  })