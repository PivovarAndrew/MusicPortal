window.getAlbum = function(albumId) {
    $.ajax({
        url: '/_album_tracks',
        type: 'GET',
        dataType: 'html',
        data:
        {
            id: albumId,
        },

        success: function (data) {
            $("#selected-album").html(data)
        },

        error: function (request, status, error) {
            // add error notification
        }

    });
return false;
}
