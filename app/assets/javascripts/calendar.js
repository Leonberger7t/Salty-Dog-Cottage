$(document).ready(function(){

  var allDays = $('.ui-state-default');
  for (var i = 0; i < allDays.length; i++){
    if (i >= 20 && i <= 25){
      allDays[i].style.background = "darkkhaki";
    }
  }

})
