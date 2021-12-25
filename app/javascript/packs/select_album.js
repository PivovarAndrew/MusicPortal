import {openSidebar, closeSidebar} from './sidebar.js'

document.addEventListener("DOMContentLoaded", function (event) {
    const selected_album_sidebar_id = "selected-album-sidebar"
    $('.selected-album-sidebar-open').click(function () {
        openSidebar(selected_album_sidebar_id);
    });
    
    $('#selected-album-sidebar-close-button').click(function () {
        closeSidebar(selected_album_sidebar_id);
    });
});
