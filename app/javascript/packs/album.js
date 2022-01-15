window.getAlbum = function (albumId) {
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

window.addAlbumToPlaylist = function (albumId) {
    const ALBUM_ALREADY_ADDED_MESSAGE = 'Album has already been added to playlist'
    const CHECKMARK_HTML = '<div class="checkmark"></div>'
    $.ajax({
        url: '/_add_album_to_playlist',
        beforeSend: function (xhr) { xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')) },
        type: 'POST',
        data:
        {
            id: albumId,
        },
        success: function () {
            $("#add-album-to-playlist-button").attr("disabled", "true")
            $("#add-album-to-playlist-button").val(concat(ALBUM_ALREADY_ADDED_MESSAGE, CHECKMARK_HTML))
            $("#user_albums_link").css('display', 'inline')
            $("#user_albums_link").attr('class', 'w3-animate-opacity')
        },
    });
    return false;
}

document.addEventListener("DOMContentLoaded", function (event) {
    $(document).on('change', '.filter', function () {
        const ATTRIBUTE_NAME = $(this).attr('id')
        const SELECTED_VALUE = $(this).val()

        $.ajax({
            url: '/_pagy_filter_albums_grid',
            type: 'GET',
            dataType: 'html',
            data:
            {
                id: ATTRIBUTE_NAME,
                selected_value: SELECTED_VALUE,
            },
            success: function (data) {
                $("#albums").html(data)
                $(`#${ATTRIBUTE_NAME}`).val(SELECTED_VALUE)
            },
        });
        return false;
    });
});
