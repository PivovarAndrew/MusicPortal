document.addEventListener("DOMContentLoaded", function (event) {
    function openTab(tabName) {
        let tabContent = document.getElementsByClassName("tab-content");
        for (let counter = 0; counter < tabContent.length; counter++) {
            tabContent[counter].style.display = "none";
        }
        document.getElementById(tabName).style.display = "flex";
    }

    let pieChartLinkElement = document.getElementById("pie-chart-link");
    let barChartLinkElement = document.getElementById("bar-chart-link");
    let lineChartLinkElement = document.getElementById("line-chart-link");

    pieChartLinkElement.addEventListener("click", function() { openTab("pie-chart") }, false);
    barChartLinkElement.addEventListener("click", function() { openTab("bar-chart") }, false);
    lineChartLinkElement.addEventListener("click", function() { openTab("line-chart") }, false);
});
