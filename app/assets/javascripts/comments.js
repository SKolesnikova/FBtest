$(document).ready(function() {
  $('#comment-link').on('click', function(e) {
    e.preventDefault();
    $('.comment-form').removeClass('hidden');
  })
})

