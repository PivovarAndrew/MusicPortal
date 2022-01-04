document.addEventListener("DOMContentLoaded", function (event) {
    $("#avatar").click(function () {
        $("#avatar-change-uploader").click();
    });

    $('#avatar-change-uploader').change(function () {
        $.ajax({
            url: '/user_profiles/update_avatar',
            data: { avatar: $(this).val() },
            dataType: 'script',
            success: function () {
               alert(1)
            }
        })
    });
});
