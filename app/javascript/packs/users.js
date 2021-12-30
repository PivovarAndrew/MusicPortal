document.addEventListener("DOMContentLoaded", function (event) {
    let panels = $('.user-infos');
    let panelsButton = $('.dropdown-user');
    let changeSelectors = $('.dropdown-role-selectors');
    let changeSelectorsButton = $('.dropdown-role-selector');
    panels.hide();
    changeSelectors.hide();

    panelsButton.click(function () {
        let id_for = $($(this).attr('data-for'));
        let current_button = $(this);
        id_for.slideToggle(400, function () {
            id_for.is(':visible') ? current_button.html('<i class="glyphicon glyphicon-chevron-up text-muted"></i>') : current_button.html('<i class="glyphicon glyphicon-chevron-down text-muted"></i>');
        })
    });

    changeSelectorsButton.click(function () {
        let idFor = $($(this).attr('data-for'));
        let currentButton = $(this);
        idFor.slideToggle(400, function () {
            idFor.is(':visible') ? currentButton.html('<i class="glyphicon glyphicon-chevron-left"></i>') : currentButton.html('<i class="glyphicon glyphicon-chevron-right"></i>');
        })
    });

    $('[data-toggle="tooltip"]').tooltip();
});
