import {openSidebar, closeSidebar} from './sidebar.js'

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

document.addEventListener("DOMContentLoaded", function (event) {
    const searced_results_sidebar_id = "searched-results-sidebar"
    $('#search').on('input', function () {
        openSidebar(searced_results_sidebar_id);
        if ($('#search').val() == "") {
            closeSidebar(searced_results_sidebar_id);
        }

    });
    
    $('#searched-albums-sidebar-close-button').click(function () {
        closeSidebar(searced_results_sidebar_id);
    });
});
