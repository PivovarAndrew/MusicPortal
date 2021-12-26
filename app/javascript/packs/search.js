import { openSidebar, closeSidebar } from './sidebar.js'

function searchAlbum() {
    $.ajax({
        url: '/_searched_albums',
        type: 'GET',
        dataType: 'html',
        data:
        {
            text: $('#search').val(),
        },

        success: function (data) {
            $("#searched-albums").html(data)
        },

        error: function (request, status, error) {
            // error notification
        }

    });
    return false;
}

const searced_results_sidebar_id = "searched-results-sidebar"

document.addEventListener("DOMContentLoaded", function (event) {
    const search = $('#search')

    search.on('input', function () {
        searchAlbum();
        openSidebar(searced_results_sidebar_id);
        if ($('#search').val() == "") {
            closeSidebar(searced_results_sidebar_id);
        }
    });

    search.click(function () {
        if (search.val() != "") {
            openSidebar(searced_results_sidebar_id);
        }
    });

    $('#searched-albums-sidebar-close-button').click(function () {
        closeSidebar(searced_results_sidebar_id);
    });
});

document.addEventListener('click', function (event) {
    const search = document.getElementById('search')
    const searched_results_panel = document.getElementById("searched-results-sidebar")
    if (!(search.contains(event.target) || searched_results_panel.contains(event.target))) {
        closeSidebar(searced_results_sidebar_id);
    }
});
