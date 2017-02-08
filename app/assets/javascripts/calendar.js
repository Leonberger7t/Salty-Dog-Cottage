$(document).ready(function(){
  console.log("Calendar Loaded");
  var allDays = $('.ui-state-default');
  console.log(allDays);
  for (var i = 0; i < allDays.length; i++){
    if (i >= 20 && i <= 25){
      allDays[i].style.background = "darkkhaki";
    }
  }

})
