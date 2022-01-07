document.addEventListener("DOMContentLoaded", function (event) {
    let commentForms = $('.comment-form');
    let replyButton = '.reply-button';
    commentForms.hide();

    $(document).on('click', replyButton, function () {
        let reply_text = "Reply"
        let hide_text = "Hide"
        let idFor = $($(this).attr('data-for'));
        let currentButton = $(this);
        idFor.slideToggle(400, function () {
            idFor.is(':visible') ? currentButton.html(`<label name="${hide_text.toLowerCase()}", 
            class="${reply_text.toLowerCase()}">${hide_text}</label>`) : currentButton.html(
                `<label name="${reply_text.toLowerCase()}", class="${reply_text.toLowerCase()}">${reply_text}</label>`);
        })
    });

    $('[data-toggle="tooltip"]').tooltip();
});
