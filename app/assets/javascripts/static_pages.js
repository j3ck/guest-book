$(document).ready(function() {

  $('.add-review').on('click', function() {
    var b_val = $('.add-review').text();
    $('.review-form').toggle('slow');
    if (b_val === 'Add review') {
      $(this).text('Close');
    } else {
      $(this).text('Add review');
    }
  });
});
