$(document).ready(function(){
  $("#main-menu > ul > li > a, .menu-items > li > a").each(function() {
      $(this).hover(
         function () {
            var color = $(this).css("color");
            $(this).parent().css({"border-bottom": "1px solid " + color});
         },
         function () {
            $(this).parent().css({"border-bottom": "none"});
         }
      )
    });
    $(".item-black.portf-item").click(function() {
        $(".java").siblings().show(1000);
    });

    $(".item-red.portf-item").click(function() {
        $(".java").siblings().not(".java").hide(1000);
        $(".java").show(1000);
    });
    $(".item-blue.portf-item").click(function() {
        $(".c").siblings().not(".c").hide(1000);
        $(".c").show(1000);
    });
        $(".item-green.portf-item").click(function() {
        $(".mobile").siblings().not(".mobile").hide(1000);
        $(".mobile").show(1000);
    });
        $(".item-purple.portf-item").click(function() {
        $(".web").siblings().not(".web").hide(1000);
        $(".web").show(1000);
    });
        $(".item-orange.portf-item").click(function() {
        $(".misc").siblings().not(".misc").hide(1000);
        $(".misc").show(1000);
    });

    function goToByScroll(id){
      // Remove "link" from the ID
      id = id.replace("link", "");
        // Scroll
      $('html,body').animate({
          scrollTop: $("#"+id).offset().top},
          'slow');
    }

    $("#main-menu > ul > li > a").click(function(e) {
          // Prevent a page reload when a link is pressed
        e.preventDefault();
          // Call the scroll function
        goToByScroll(this.id);
    });
});
