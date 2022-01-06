window.addComment = function (album_id) {
    $.ajax({
        url: '/_comments',
        type: 'GET',
        dataType: 'html',
        data:
        {
            id: album_id,
        },
        success: function (data) {
            alert(data)
            $("#comments").html(data)
        },

        error: function (request, status, error) {
            // add error notification
        }

    });
    return false;
}

document.addEventListener("DOMContentLoaded", function (event) {
    let commentForms = $('.comment-form');
    let replyButton = $('.reply-button');
    commentForms.hide();

    replyButton.click(function () {
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
