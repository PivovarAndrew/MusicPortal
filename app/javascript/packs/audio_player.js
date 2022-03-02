document.addEventListener('DOMContentLoaded', function() {
    GreenAudioPlayer.init({
        selector: '.player',
        stopOthersOnPlay: true
    });

    GreenAudioPlayer.init({
        selector: '.player-with-download',
        stopOthersOnPlay: true,
        showDownloadButton: true,
        enableKeystrokes: true
    });

    GreenAudioPlayer.init({
        selector: '.player-with-accessibility',
        stopOthersOnPlay: true,
        enableKeystrokes: true
    });
});
