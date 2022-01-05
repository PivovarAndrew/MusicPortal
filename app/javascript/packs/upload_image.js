document.addEventListener("DOMContentLoaded", function (event) {
    $("#avatar").click(function () {
        $("#avatar-change-uploader").click();
    });

    $('#avatar-change-uploader').change(function () {
        alert("Image uploaded.")
        $.ajax({
            url: '/user_profiles/update_avatar',
            data: { avatar: $(this).val() },
            dataType: 'script',
        })
    });
});
