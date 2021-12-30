import {openSidebar, closeSidebar} from './sidebar.js'

document.addEventListener("DOMContentLoaded", function (event) {
    const SELECTED_ALBUM_SIDEBAR_ID = "selected-album-sidebar"
    $('.selected-album-sidebar-open').click(function () {
        openSidebar(SELECTED_ALBUM_SIDEBAR_ID);
    });
    
    $('#selected-album-sidebar-close-button').click(function () {
        closeSidebar(SELECTED_ALBUM_SIDEBAR_ID);
    });
});
