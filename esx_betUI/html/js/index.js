
  $(function() {
  $(document).keyup(function(e) {
      if (e.keyCode == 27) {
          $(".container-fluid").fadeOut();
 
          $.post('http://esx_betUI/zamknij', JSON.stringify({}));
      }
  });
  $(document).ready(function() {
      window.addEventListener('message', function(event) {
          var item = event.data;
    
          if (item.open == true) {
         
              $('.container-fluid').css('display', 'block');

          } else if (item.open == false) {
             $('.container-fluid').css('display', 'none');
              
        }
});

$("#1").click(function() {
    setTimeout(function(){$.post('http://esx_betUI/1', JSON.stringify({}));;; }, 100);    
});

$("#2").click(function() {
    setTimeout(function(){$.post('http://esx_betUI/2', JSON.stringify({}));;; }, 100);
});

$("#3").click(function() {
    setTimeout(function(){$.post('http://esx_betUI/3', JSON.stringify({}));;; }, 100);
});

$("#9").click(function() {
    $.post('http://esx_betUI/zamknij', JSON.stringify({}));
    });
  })
})


