document.addEventListener("DOMContentLoaded", function (event) {
    let commentForms = $('.comment-form');
    let replyButton = '.reply-button';
    commentForms.hide();

    $(document).on('click', replyButton, function () {
        let reply_text = "Ответить"
        let hide_text = "Скрыть"
        let idFor = $($(this).attr('data-for'));
        let currentButton = $(this);
        idFor.slideToggle(400, function () {
            idFor.is(':visible') ? currentButton.html(`<label name="${hide_text.toLowerCase()}", 
            class="${reply_text.toLowerCase()}">${hide_text}</label>`) : currentButton.html(`<label name="${reply_text.toLowerCase()}", class="${reply_text.toLowerCase()}">${reply_text}</label>`);
        })
    });

    let subComments = $('.sub-comment');
    let subCommentsButton = '.dropdown-sub-comments';
    subComments.hide();

    $(document).on('click', subCommentsButton, function () {
        let idFor = $($(this).attr('data-for'));
        let current_button = $(this);
        idFor.slideToggle(400, function () {
            idFor.is(':visible') ? current_button.html('<i class="glyphicon glyphicon-chevron-up text-muted"></i>') : current_button.html('<i class="glyphicon glyphicon-chevron-down text-muted"></i>');
        })
    });

    $('[data-toggle="tooltip"]').tooltip();
});
