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

window.addAlbumToPlaylist = function(albumId) {
    const ALBUM_ALREADY_ADDED_MESSAGE = 'Album has already been added to playlist'
    const CHECKMARK_HTML = '<div class="checkmark"></div>'

    $.ajax({
        url: '/_add_album_to_playlist',
        beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
        type: 'POST',
        data:
        {
            id: albumId,
        },

        success: function () {
            $("#add-album-to-playlist-button").attr("disabled", "true")
            $("#add-album-to-playlist-button").text(concat(ALBUM_ALREADY_ADDED_MESSAGE, CHECKMARK_HTML))
        },

        error: function (request, status, error) {
            alert(error)
        }

    });
return false;
}