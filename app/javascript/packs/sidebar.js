function openSidebar() {
    document.getElementById("sidebar").style.display = "block";
}

function closeSidebar() {
    document.getElementById("sidebar").style.display = "none";
} 

document.addEventListener("DOMContentLoaded", function (event) {
    $('.sidebar-open-button').click(function () {
        openSidebar();
    });
    
    $('.sidebar-close-button').click(function () {
        closeSidebar();
    });
});
   