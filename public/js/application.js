$(document).ready(function () {
  
  $('#dice').on('click', function() {
    event.preventDefault();
    var roll = Math.floor(Math.random() * 6) + 1;
    $.post('/rolls', { value: roll }, function(server_response) {
      $('#die').html(server_response);
    });
  });
});
