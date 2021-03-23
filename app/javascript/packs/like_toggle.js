document.addEventListener("turbolinks:load", function (){

    $(".like-toggle").click(function() {
        var button = $(this);
        $.ajax({
            type: 'POST',
            url: '',
            success: function(data) {
                
            }
        })
    });
});
