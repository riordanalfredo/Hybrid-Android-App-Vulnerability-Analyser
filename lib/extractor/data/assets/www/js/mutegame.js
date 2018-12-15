 //initial
    var bg = document.getElementById("bg");
    var aud = document.getElementById("audio"); 
    var mus = document.getElementById("music");

    var bgStatement= "<i class='material-icons'>" + "volume_up" + "</i>";
    bg.innerHTML = bgStatement;
    
    var muteCondition={
        cond: false,
    }

    var STORAGE_KEY_SONG = "mute";


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
            
            muteButton.className = "mdl-button mdl-js-button mdl-js-ripple-effect off";
            aud.muted = true;
            mus.muted = true;
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
     
        if(a.className == "mdl-button mdl-js-button mdl-js-ripple-effect on"){
            
            a.className = "mdl-button mdl-js-button mdl-js-ripple-effect off";
            aud.muted = true;
            mus.muted = true;
            muting(true);
            volume = "volume_off";
            
            
        }
        else {
            
            a.className = "mdl-button mdl-js-button mdl-js-ripple-effect on";
            aud.muted = false;
            mus.muted = false;
            muting(false);
            volume = "volume_up";
            
    
                
        }
        
        var bgStatement= "<i class='material-icons'>" + volume + "</i>";
        bg.innerHTML = bgStatement;
    }