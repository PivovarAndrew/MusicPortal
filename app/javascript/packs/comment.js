window.addComment = function(album_id) {
    $.ajax({
        url: '/_comments',
        type: 'GET',
        dataType: 'html',
        data:
        {
            id: album_id,
        },
        success: function (data) {
            alert(data)
            $("#comments").html(data)
        },

        error: function (request, status, error) {
            // add error notification
        }

    });
return false;
}
