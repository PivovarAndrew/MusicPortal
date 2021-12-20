document.addEventListener("DOMContentLoaded", function(event) {
    var panels = $('.user-infos');
    var panelsButton = $('.dropdown-user');
    var changeSelectors = $('.dropdown-role-selectors');
    var changeSelectorsButton = $('.dropdown-role-selector');
    panels.hide();
    changeSelectors.hide();

    panelsButton.click(function () {
        var id_for = $($(this).attr('data-for'));
        var current_button = $(this);
        id_for.slideToggle(400, function () {
            id_for.is(':visible') ? current_button.html('<i class="glyphicon glyphicon-chevron-up text-muted"></i>') : current_button.html('<i class="glyphicon glyphicon-chevron-down text-muted"></i>');
        })
    });

    changeSelectorsButton.click(function () {
        var idFor = $($(this).attr('data-for'));
        var currentButton = $(this);
        idFor.slideToggle(400, function () {
            idFor.is(':visible') ? currentButton.html('<i class="glyphicon glyphicon-chevron-left"></i>') : currentButton.html('<i class="glyphicon glyphicon-chevron-right"></i>');
        })
    });


    $('[data-toggle="tooltip"]').tooltip();
});
