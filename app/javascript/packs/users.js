document.addEventListener("DOMContentLoaded", function(event) {
    var panels = $('.user-infos');
    var panelsButton = $('.dropdown-user');
    panels.hide();

    panelsButton.click(function () {
        var dataFor = $(this).attr('data-for');
        var idFor = $(dataFor);

        var currentButton = $(this);
        idFor.slideToggle(400, function () {
            if (idFor.is(':visible')) {
                currentButton.html('<i class="glyphicon glyphicon-chevron-up text-muted"></i>');
            }
            else {
                currentButton.html('<i class="glyphicon glyphicon-chevron-down text-muted"></i>');
            }
        })
    });


    $('[data-toggle="tooltip"]').tooltip();
});
