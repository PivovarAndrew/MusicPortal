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

const searcedResultsSidebarId = "searched-results-sidebar"

document.addEventListener("DOMContentLoaded", function (event) {
    const search = $('#search')
    const searchedTextHTMLDiv = '<div id="searched-text-value"></div>'
    const resultsNotFoundHTML = `No results were found for "${searchedTextHTMLDiv}".`
    const resultsFoundHTML = `All results for "${searchedTextHTMLDiv}".`

    search.on('input', function () {
        searchAlbum();
        $('#searched-text').html($('#searched-albums').is(':empty') ? resultsNotFoundHTML : resultsFoundHTML)
        $("#searched-text-value").html(this.value);
        openSidebar(searcedResultsSidebarId);
        if ($('#search').val() == "") {
            closeSidebar(searcedResultsSidebarId);
        }
    });

    search.click(function () {
        if (search.val() != "") {
            openSidebar(searcedResultsSidebarId);
        }
    });

    $('#searched-albums-sidebar-close-button').click(function () {
        closeSidebar(searcedResultsSidebarId);
    });
});

document.addEventListener('click', function (event) {
    const search = document.getElementById('search')
    const searchedResultsPanel = document.getElementById("searched-results-sidebar")
    if (!(search.contains(event.target) || searchedResultsPanel.contains(event.target))) {
        closeSidebar(searcedResultsSidebarId);
    }
});
