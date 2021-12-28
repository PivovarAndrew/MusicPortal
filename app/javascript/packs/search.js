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

const SEARCHED_RESULTS_SIDEBAR_ID = "searched-results-sidebar"

document.addEventListener("DOMContentLoaded", function (event) {
    const search = $('#search')
    const SEARCED_TEXT_HTML_DIV = '<div id="searched-text-value"></div>'
    const RESULTS_NOT_FOUND_HTML = `No results were found for "${SEARCED_TEXT_HTML_DIV}".`
    const RESULTS_FOUND_HTML = `All results for "${SEARCED_TEXT_HTML_DIV}".`

    search.on('input', function () {
        searchAlbum();
        $('#searched-text').html($('#searched-albums').is(':empty') ? RESULTS_NOT_FOUND_HTML : RESULTS_FOUND_HTML)
        $("#searched-text-value").html(this.value);
        openSidebar(SEARCHED_RESULTS_SIDEBAR_ID);
        if ($('#search').val() == "") {
            closeSidebar(SEARCHED_RESULTS_SIDEBAR_ID);
        }
    });

    search.click(function () {
        if (search.val() != "") {
            openSidebar(SEARCHED_RESULTS_SIDEBAR_ID);
        }
    });

    $('#searched-albums-sidebar-close-button').click(function () {
        closeSidebar(SEARCHED_RESULTS_SIDEBAR_ID);
    });
});

document.addEventListener('click', function (event) {
    const search = document.getElementById('search')
    const searchedResultsPanel = document.getElementById("searched-results-sidebar")
    if (!(search.contains(event.target) || searchedResultsPanel.contains(event.target))) {
        closeSidebar(SEARCHED_RESULTS_SIDEBAR_ID);
    }
});
