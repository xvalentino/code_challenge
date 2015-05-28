$(document).ready(function() {
  $('.wishlist').click(function() { 
    $this = $(this);
    itemId = $this.parent().data('id');

    $.ajax({
      url: '/wishlist/' + itemId,
      type: 'POST'
    })
    .then(function() {
      $this.text("In Wishlist");
    });  
  });
});
