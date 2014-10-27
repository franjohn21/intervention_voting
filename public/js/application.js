$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  $.ajax({
  	url: '/api/v0/cardpair',
  	method: 'POST',
  	data: {winner_id: 10, loser_id: 9}
  }).done(function(){console.log("finished")});
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
