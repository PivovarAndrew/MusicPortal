import {openSidebar, closeSidebar} from './sidebar.js'

document.addEventListener("DOMContentLoaded", function (event) {
    const SELECTED_ALBUM_SIDEBAR_ID = "selected-album-sidebar"
    $(document).on('click', '.selected-album-sidebar-open',function () {
        openSidebar(SELECTED_ALBUM_SIDEBAR_ID);
    });
    
    $(document).on('click', '#selected-album-sidebar-close-button', function () {
        closeSidebar(SELECTED_ALBUM_SIDEBAR_ID);
    });
});
