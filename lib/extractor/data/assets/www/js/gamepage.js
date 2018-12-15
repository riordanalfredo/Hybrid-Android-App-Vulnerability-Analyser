var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 3000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
var primeNumber = 12582917;

var colorBrankas = ["RED","MAROON","LIME", "GREEN", "BLUE", "YELLOW","PURPLE", "SALMON", "ORANGE","PINK","CHOCOLATE","INDIGO","CORNSILK","KHAKI","NAVY","TEAL","TURQUOISE","WHEAT","SNOW","AQUA","AZURE"]

//Achievements time delay
if(checkExist.data[2].unlocked == true){
	colorBrankas.push("OLIVE");
    colorBrankas.push("MAGENTA");
    colorBrankas.push("AQUAMARINE");
}



function colourVaults(sizeColor){
	/*
	Will return the colors array which depends on the number of it's needed
	*/
	var colorsArray = [];
	var randomIt = 0;
	var counterColor = 0;
	while(counterColor < sizeColor){
		randomIt = Math.round(Math.random() * primeNumber) % colorBrankas.length;
        console.log(randomIt);
        
        function checkerColours(){
            var condition = true;
                for(var x = 0; x <= sizeColor; x++){
                    if(colorsArray[x] == colorBrankas[randomIt]){
                        condition = false;
                    }
                }
             return condition;
            }
    
        if(colorsArray[0] == null){
                colorsArray.push(colorBrankas[randomIt]);
                counterColor +=1;
                }
            
            else{
                var cond = checkerColours();
                if(cond == true){
                    colorsArray.push(colorBrankas[randomIt]);
                    counterColor +=1;
            }
        }
    }
	return colorsArray;
}

var colors = colourVaults(5);
	

console.log(colors)

var currentColor = 0;
var index = [];
var timer = 1000;

var colorVault = [];

//Global varible for randomChoices

var choice = ["",""];
var vault = [];
var answera = document.getElementById("answera");
var answerb = document.getElementById("answerb");
var handler = [];

var frontBackSelector = 1;
 $('#card').flip({trigger:'manual'});
var randomCard = Math.round(Math.random() * primeNumber) % 5;

// To change the skin of the card
var STORAGE_KEY_SKIN = "skins";
var selectedAchievement = JSON.parse(localStorage.getItem(STORAGE_KEY_SKIN));
var logoDisplay = "backg.png";

if(checkExist.data[parseInt(selectedAchievement.index)].unlocked == true){
    logoDisplay = checkExist.data[parseInt(selectedAchievement.index)].logo;
}
document.getElementById("mid1").src = "../img/achievements/" + logoDisplay;
document.getElementById("mid2").src = "../img/achievements/" + logoDisplay; 

function switchColor() {    
            
        var randomColorIndex =  Math.round(Math.random() * primeNumber) % 5;

        index.push(randomColorIndex);
        randomColorIndex = checkerFunction(randomColorIndex);
        var randomColor = colors[randomColorIndex];

        var flipx = {
          axis: 'x',
        };
        var flipy = {
          axis: 'y',
        };
        var flipz = {
          axis: '',
        };
        var fliprevx = {
          flip: 'x',
          reverse:true
        };
        var fliprevy= {
          axis: 'y',
          reverse:true    
        };
        var sequence = [flipx,flipy,flipz,fliprevx,fliprevy] ;



        $('#card').flip(sequence[randomCard]);

            if( frontBackSelector == 1){

                $('#front').css('background-color', randomColor)
                frontBackSelector += 1;

            } else if(frontBackSelector !== 1){

                $('#back').css('background-color', randomColor)
                frontBackSelector -= 1;
            }


        colorVault.push(randomColor);
            
    }

switchColor(); //Running Switch Color 
randomChoices();

function checkerFunction(random){
            
            var value = 0;
            if(index.length == 2) { 
                
                if (index[0] == index[1])
                     {
                        value = Math.round(Math.random() * primeNumber) % 5;
                        index = [random];
                        index.push(value);
                        value = checkerFunction(value);
                        index = []; //clearing
                     }
                else {
                        value = random; //if it is not similar, return the correct value
                        index = [];
                     }
             }
            else { value = random }
            return value;
        }
 


//---------------------------------Random Answer Choice--------------------------------------//
function fadeout(){
        
         var newVolume = 0.2;
        
        $("#audio").animate({volume: newVolume}, 700);
        setTimeout(location,700)
        function location(){
            window.location = "level.html";
            
        }
    }    
    
    
function randomChoices(){
    		
        answera.innerHTML = "";
        answerb.innerHTML = "";
        var random1 = Math.round(Math.random()*primeNumber) % 5;
        var random2 = Math.round(Math.random()*primeNumber) % 5;


        while(random1 == random2){
            random2 = Math.round(Math.random()*primeNumber) % 5;
        }    


        if( colorVault[colorVault.length - 1] == colors[random1] | colorVault[colorVault.length - 1] == colors[random2]){
            answera.innerHTML = colors[random1];
            answerb.innerHTML = colors[random2];
        } 
        else {

               randomChoices();

        }

}



// -------------------------------------------------------------------------------------------------------------------------//
// -------------------------------------------------- Timer CountDown ------------------------------------------------------//
var TotalSeconds    = 7;

//Achievements time delay
if(checkExist.data[1].unlocked == true && parseInt(selectedAchievement.index) == 1){
	TotalSeconds += 3;
    var clockSymbol = document.getElementById("clock")
    clockSymbol.innerHTML= "<i class='material-icons'>alarm_add</i> buff";
    
}


var timeElement = document.getElementById('time');
timeElement.innerHTML = TotalSeconds;
var anjay = 0;
var amboy = 0;


timeInterval();

function timeInterval(){
    anjay = setInterval(timerCountdown,1000);
    amboy = setTimeout(anjay,1000);
    
}

var documentWidth  = $(bar).width();


function timerCountdown(){
    
    var currentValue = parseInt(timeElement.innerHTML);
    if (currentValue == 0){
        var total = currentValue + 0;
    }
    else if (currentValue <= -1){
        
        var total = currentValue + 1;
    }
    else{
        var total = currentValue - 1;
    }
    
      if (parseInt(timeElement.innerHTML) <= 0){
          
        timeElement.innerHTML = total;
        saveHighscore();
        stopTheGame();  
    }
    
    else{
        
         timeElement.innerHTML = total;
    }
    
    var seconds = parseInt(timeElement.innerHTML);
    if (seconds > TotalSeconds){
        seconds = TotalSeconds;
    }
	
    var progresBarWidth = (seconds * documentWidth / TotalSeconds);
	
    $('#progress').animate({
            width: progresBarWidth + 'px'
    }, 700);
	
	if(seconds < Math.round(TotalSeconds*0.5)){
		$('#mid1').addClass('shake-constant shake-constant--hover');
		$('#mid2').addClass('shake-constant shake-constant--hover');
	}
	else if(seconds >= Math.round(TotalSeconds*0.8)){
		$('#mid1').removeClass('shake-constant shake-constant--hover');
		$('#mid2').removeClass('shake-constant shake-constant--hover');
	}
    
}



//-------------------------------------------------- CORRECT OR NOT! -----------------------------------------------------//

var score = 0;
var answer = document.getElementById('score');
answer.innerHTML = score;

var storage = [];

function scoreCalculator(i){
    
    var state = "";
    storage.push(colorVault[colorVault.length - 1]);
    
    if ( i == "a")
        {
            storage.push(answera.innerHTML);
        }
    else if (i == "b"){
            storage.push(answerb.innerHTML);
        }
    
    if (storage[0] !== storage[1])
    {
        state = wrongAnswer();
    }
        else if (storage[0] == storage[1] )
    {
        state = correctAnswer();
    }
    storage = [];
    
    switchColor();
    $('#card').flip('toggle');
	
    randomChoices();
	
    
     if (parseInt(timeElement.innerHTML) <= 0){
            saveHighscore();
            stopTheGame();
        }
    }




function correctAnswer(){
    
	//Add indicator
    var state = "correct";

	
	
    var currentValue = parseInt(timeElement.innerHTML);
    var total = currentValue + 1;

    timeElement.innerHTML = total;
    
    score += 1;
    answer.innerHTML = score;
   return state; 
    
}

function wrongAnswer(){
	
	//Add indicator
    var state = "wrong";
	
	$('#card').addClass(state).delay(300).queue(function(){
    $(this).removeClass(state).dequeue();
    });
	
    var currentValue = parseInt(timeElement.innerHTML);
	
	var reduceNumber = 2;
	//Achievements time delay
	if(checkExist.data[3].unlocked == true && parseInt(selectedAchievement.index) == 3){
		reduceNumber = 1
	}
	
    var total = currentValue - reduceNumber;
    
    if(currentValue == 0){total = 0;} else if(currentValue == 1){total = 0}; 
    
    timeElement.innerHTML = total;
	
	return state;
    
}

function myFunction(){
	console.log("test")
}

/* Storing the HighScore */
var highscorePan = 0;

var highscoreObject= {
    current: 0,
    highest: 0,
};

var highscore = document.getElementById("highscore");
highscore.innerHTML = 0;


var STORAGE_KEY = "score";
function saveHighscore(){
    
    // Code to save person object to Local Storage
   
    var scoreStorage = JSON.parse(localStorage.getItem(STORAGE_KEY));
    scoreStorage.current = score;
    highscoreCondition(scoreStorage);
    localStorage.setItem(STORAGE_KEY, JSON.stringify(scoreStorage));
    
	
	
    if (scoreStorage.current == scoreStorage.highest && scoreStorage.current !== 0){
        
        highscorePan = scoreStorage.highest + " <font color='red'>NEW!</font>";
		//Achievemetns, should be refactored later on
		
		var achievementObject = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));
		
		if (scoreStorage.highest >= 30 && achievementObject.data[0].unlocked == false){
			achievementCallee(0);
            selectedAchievement.index = 0;
            localStorage.setItem(STORAGE_KEY_SKIN, JSON.stringify(selectedAchievement));
		}
		if (scoreStorage.highest >= 50 && achievementObject.data[1].unlocked == false){
			achievementCallee(1);
            selectedAchievement.index = 1;
            localStorage.setItem(STORAGE_KEY_SKIN, JSON.stringify(selectedAchievement));
		}
		
		if (scoreStorage.highest == 300 && achievementObject.data[4].unlocked == false){
			achievementCallee(4);
            selectedAchievement.index = 4;
            localStorage.setItem(STORAGE_KEY_SKIN, JSON.stringify(selectedAchievement));
		}
		
    }
    else{
        highscorePan = scoreStorage.highest;
        
    }
	
	
   
	
}
// Code to restore polygon from Local Storage



function highscoreCondition(object){
    
     if (object.current > object.highest)
            {
              object.highest = object.current;
            }
        else{
              object.current = object.current;
        }    
}

    var scoreJSON = localStorage.getItem(STORAGE_KEY);
    if (scoreJSON)
    {
        var scoreStorage = JSON.parse(scoreJSON);
        highscoreCondition(scoreStorage);
        highscore.innerHTML = scoreStorage.highest;
    }
    else
    {
        localStorage.setItem(STORAGE_KEY, JSON.stringify(highscoreObject));
    }

/*printing score and highscore*/

jQuery(document).ready(function($) {  

// site preloader -- also uncomment the div in the header and the css style for #preloader
$(window).load(function(){
	$('#preloader').fadeOut('slow',function(){$(this).remove();});
});

});
