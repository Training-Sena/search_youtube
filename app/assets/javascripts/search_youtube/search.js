function onClientLoad() {
    gapi.client.load('youtube', 'v3', onYouTubeApiLoad);
}

function onYouTubeApiLoad() {
    gapi.client.setApiKey('AIzaSyAWhX3xLCfnJ-U0HEPo7R0Zc-5J9jCJoXc');
}

function search() {
    var query = document.getElementById('query').value;
    var request = gapi.client.youtube.search.list({
        part: 'snippet',
        type: 'playlist, video',
        maxResults: '49',
        q:query
    });
    request.execute(onSearchResponse);
}

var ytplayer;
  function onYouTubeIframeAPIReady() {
    ytplayer = new YT.Player('spherical-video-player', {
        height: '30',
        width: '640',
        videoId: 'FAtdv94yzp4',
    });
  }


function onSearchResponse(response) {
    $("#response").html('');
    response.items.forEach(function(e){
        $("#response").append('<iframe id="ytplayer" allowfullscreen="allowfullscreen" src="https://www.youtube.com/embed/'+ e.id.videoId +'"><img width="'+ e.snippet.thumbnails.default.width + '"src="'+ e.snippet.thumbnails.default.url +'" height="'+ e.snippet.thumbnails.default.height +'"></iframe>');
    });
}