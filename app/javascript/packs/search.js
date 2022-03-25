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

function searchApiAlbums() {
    $("#searched-api-albums").html("<br/><i id='like-loading' class='fa fa-spinner fa-spin'></i>")
    $.ajax({
        url: '/_searched_api_albums',
        type: 'GET',
        dataType: 'html',
        data:
        {
            text: $('#api-albums-search-value').val(),
        },

        success: function (data) {
            $("#searched-api-albums").html(data)
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
    const RESULTS_NOT_FOUND_HTML = `Ничего не найдено по запросу "${SEARCED_TEXT_HTML_DIV}".`
    const RESULTS_FOUND_HTML = `Все результаты по запросу "${SEARCED_TEXT_HTML_DIV}".`

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

    $('#search-api-albums').click(function () {
        if ($("api-albums-search-value").val() != "") {
            searchApiAlbums();
        }
    });
});

document.addEventListener('click', function (event) {
    const search = document.getElementById('search')
    const searchedResultsPanel = document.getElementById("searched-results-sidebar")
    if (!(search.contains(event.target) || searchedResultsPanel.contains(event.target))) {
        closeSidebar(SEARCHED_RESULTS_SIDEBAR_ID);
    }
});
