window.searchAlbum = function(text) {
    $.ajax({
        url: '/_searched_albums',
        type: 'GET',
        dataType: 'html',
        data:
        {
            text: $('#search').val(),
        },

        success: function (data) {
            $("#searced-albums").html(data)
        },

        error: function (request, status, error) {
            // error notification
        }

    });
return false;
}
