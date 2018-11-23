
var bg = document.getElementById("bg");
	// Audio Parts

var muteCondition={
        cond: false,
    }
var aud = new Audio('bgmusic/a.mp3');
var STORAGE_KEY_SONG = "mute";
	
function mute_audio( condition ){
	
	aud.addEventListener('ended', function() {
		this.currentTime = 0;
		this.play();
	}, false);
	
	aud.play();
	
	var mute = JSON.parse(localStorage.getItem(STORAGE_KEY_SONG));
    var condition = mute.cond;
	var volume = "volume_up";
	
	if(condition){
		aud.muted = condition;
		volume = "volume_off";
	}
	else{
		aud.volume = 0.5;
		volume = "volume_up"
	}
	
    localStorage.setItem(STORAGE_KEY_SONG, JSON.stringify(mute));
	
	var bgStatement= "<i class='material-icons'>" + volume + "</i>";
    bg.innerHTML = bgStatement;
   
}

 


function muting(condition){
    
    var mute = JSON.parse(localStorage.getItem(STORAGE_KEY_SONG));
    mute.cond = condition;
    localStorage.setItem(STORAGE_KEY_SONG, JSON.stringify(mute));
    
    }

    // Code to restore polygon from Local Storage
    var muteJSON = localStorage.getItem(STORAGE_KEY_SONG);
    if (muteJSON)
    {
        var muteCond = JSON.parse(muteJSON);
        if(muteCond.cond == true){
            
            muteButton.className = "mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect off";
            aud.muted = true;
            muting(true);
            var bgStatement= "<i class='material-icons'> volume_off </i>";
            bg.innerHTML = bgStatement;
        }
                
    }
    else
    {
        localStorage.setItem(STORAGE_KEY_SONG, JSON.stringify(muteCondition));
    }

 function toogleState(a){
    
        if(a.className == "mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect on"){
            
            a.className = "mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect off";
            aud.muted = true;
            muting(true);
            volume = "volume_off";
            
              var snackbarContainer = document.querySelector('#demo-toast-example');
              var showToastButton = document.querySelector('#demo-show-toast');
              var data = {message: 'Volume OFF'};
              snackbarContainer.MaterialSnackbar.showSnackbar(data);
            
        }
        else {
            
            a.className = "mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect on";
            aud.muted = false;
            muting(false);
            volume = "volume_up";
            
              var snackbarContainer = document.querySelector('#demo-toast-example');
              var showToastButton = document.querySelector('#demo-show-toast');
              var data = {message: 'Volume ON'};
              snackbarContainer.MaterialSnackbar.showSnackbar(data);
              
                
        }
        
        var bgStatement= "<i class='material-icons'>" + volume + "</i>";
        bg.innerHTML = bgStatement;
    }
    