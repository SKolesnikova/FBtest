$( document ).ready( function() {

  $( '.comment-body' ).on( 'blur', updateComment );

  function updateComment(e) {
    if (!e.target.innerText) return;
    $.ajax({
          url: "comments/" + e.target.id,
          method: 'PUT',
          data: { comment: e.target.innerText }
        }).done(function () {

        });
  }

})

