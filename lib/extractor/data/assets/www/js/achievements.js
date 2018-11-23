// JavaScript Document
 

 var achievements = {
	 name: [],
	 title:[],
	 logo: [],
	 date: [],
	 bonus: [],
	 description:[],
	 unlocked: [],
	 secret:[],
 }
 
var number_of_achievements = 4;
 
var STORAGE_KEY_ACHIEVEMENTS = "achievements";
var checkExist = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));


function initializeAchievements(){
	if (checkExist && (checkExist.name.length == number_of_achievements+1)){
	console.log("all good")
	}
	else
		{
			for(var x = 0; x <= number_of_achievements; x++){
				achievements.name.push("LOCKED");
				achievements.title.push("Default");
				achievements.logo.push("img/bonus/backg.png");
				achievements.date.push("");
				achievements.bonus.push("img/backg.png");
				achievements.unlocked.push(false);
				achievements.description.push("");
			}
			
			
			achievements.description[0] = "Reach a score above 30 in Easy mode";
			achievements.description[1] = "Reach a score above 50 in Easy mode"
			achievements.description[2] = "Reach a score above 30 in Normal mode";
			achievements.description[3] = "Reach a score above 50 in Normal mode";
			achievements.description[4] = "Reach highscore exactly 300 in any mode";
			
			achievements.secret[1] = "Use this skin to gain Extra time 3 seconds";
			achievements.secret[2] = "Bonus 3 Hidden Colours";
			achievements.secret[3] = "Use this skin to reduced time penalty";
			achievements.secret[4] = "SECRET";

			localStorage.setItem(STORAGE_KEY_ACHIEVEMENTS, JSON.stringify(achievements));
		}
}

 
 function achievement_japan(index){
	  
	  // Get local storage
	  var achievementObject = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));
	 
	  // Fill the objects
      achievementObject.name[index] = "BANZAI! That was easy";
	  achievementObject.logo[index] = "img/bonus/banzai.png";
	  achievementObject.title[index] = "Musashi no Kimply"
	  var d = new Date();
	  var tanggal = d.toUTCString();
	  achievementObject.date[index] = tanggal;
	  achievementObject.bonus[index] = "img/banzai.png";
	  achievementObject.unlocked[index] = true;
	  
	  
	 // Store back to Local Storage
	  var total = JSON.stringify(achievementObject);
      localStorage.setItem(STORAGE_KEY_ACHIEVEMENTS, total);
	 
  var snackbarContainer = document.querySelector('#demo-toast-example');
  var showToastButton = document.querySelector('#demo-show-toast');
  var data = {message: 'UNLOCKED ACHIEVEMENT: '+ achievementObject.name[index]};
  snackbarContainer.MaterialSnackbar.showSnackbar(data);
 }



function achievement_time( index ){
	  // Get local storage
	  var achievementObject = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));
	 
	  // Fill the objects
      achievementObject.name[index] = "What year is it? It worked!";
	  achievementObject.logo[index] = "img/bonus/future.png";
	  achievementObject.title[index] = "Time Traveler Kimply"
	  var d = new Date();
	  var tanggal = d.toUTCString();
	  achievementObject.date[index] = tanggal;
	  achievementObject.bonus[index] = "img/future.png";
	  achievementObject.unlocked[index] = true;
	  
	  
	  
	 // Store back to Local Storage
	  var total = JSON.stringify(achievementObject);
      localStorage.setItem(STORAGE_KEY_ACHIEVEMENTS, total);
	
	//Achievments notification
	
  var snackbarContainer = document.querySelector('#demo-toast-example');
  var showToastButton = document.querySelector('#demo-show-toast');
  var data = {message: 'UNLOCKED ACHIEVEMENT: '+ achievementObject.name[index]} ;
  snackbarContainer.MaterialSnackbar.showSnackbar(data);
    
}


function achievement_painter( index ){
	  // Get local storage
	  var achievementObject = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));
	 
	  // Fill the objects
      achievementObject.name[index] = "The Maestro";
	  achievementObject.logo[index] = "img/bonus/painter.png";
	  achievementObject.title[index] = "Monsieur Kimply"
	  var d = new Date();
	  var tanggal = d.toUTCString();
	  achievementObject.date[index] = tanggal;
	  achievementObject.bonus[index] = "img/maestro.png";
	  achievementObject.unlocked[index] = true;
	 
	  
	  
	 // Store back to Local Storage
	  var total = JSON.stringify(achievementObject);
      localStorage.setItem(STORAGE_KEY_ACHIEVEMENTS, total);
	
	//Achievments notification
	
  var snackbarContainer = document.querySelector('#demo-toast-example');
  var showToastButton = document.querySelector('#demo-show-toast');
  var data = {message: 'UNLOCKED ACHIEVEMENT: '+ achievementObject.name[index]} ;
  snackbarContainer.MaterialSnackbar.showSnackbar(data);
}

function achievement_astronaut( index ){
	  // Get local storage
	  var achievementObject = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));
	 
	 // Fill the objects
      achievementObject.name[index] = "What is Gravity...??";
	  achievementObject.logo[index] = "img/bonus/astronaut.png";
	  achievementObject.title[index] = "Major Kimply"
	  var d = new Date();
	  var tanggal = d.toUTCString();
	  achievementObject.date[index] = tanggal;
	  achievementObject.bonus[index] = "img/astronaut.png";
	  achievementObject.unlocked[index] = true;
	  
	  
	 // Store back to Local Storage
	  var total = JSON.stringify(achievementObject);
      localStorage.setItem(STORAGE_KEY_ACHIEVEMENTS, total);
	
	//Achievments notification
	
  var snackbarContainer = document.querySelector('#demo-toast-example');
  var showToastButton = document.querySelector('#demo-show-toast');
  var data = {message: 'UNLOCKED ACHIEVEMENT: '+ achievementObject.name[index]} ;
  snackbarContainer.MaterialSnackbar.showSnackbar(data);
	
}
 
 function achievement_sparta(index){
	  
	  // Get local storage
	  var achievementObject = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));
	 
	  // Fill the objects
      achievementObject.name[index] = "This is SPARTA!";
	  achievementObject.logo[index] = "img/bonus/sparta.png";
	  achievementObject.title[index] = "King Spartaly"
	  var d = new Date();
	  var tanggal = d.toUTCString();
	  achievementObject.date[index] = tanggal;
	  achievementObject.bonus[index] = "img/sparta.png";
	  achievementObject.unlocked[index] = true;
	  
	  
	 // Store back to Local Storage
	  var total = JSON.stringify(achievementObject);
      localStorage.setItem(STORAGE_KEY_ACHIEVEMENTS, total);
	 
  var snackbarContainer = document.querySelector('#demo-toast-example');
  var showToastButton = document.querySelector('#demo-show-toast');
  var data = {message: 'UNLOCKED ACHIEVEMENT: '+ achievementObject.name[index]};
  snackbarContainer.MaterialSnackbar.showSnackbar(data);
	 
 }










function showAchievements(){
var achievements_id = document.getElementById("achievements");

var objectAch = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));

achievements_id.innerHTML = "<ul class='demo-list-three mdl-list'>" +calculate(objectAch) +"</ul> "
	
}

function calculate(object){
	var total = "";
	for(var i=0; i<= number_of_achievements;i++){
		total += "<a style='text-decoration:none' href='skins.html'"+
					"<li class='mdl-list__item mdl-list__item--three-line'>"+
					"<span class='mdl-list__item-primary-content'>"+
						  "<img id='achv1_img' src='" + object.logo[i] + "' class='material-icons mdl-list__item-avatar'>"+
						  "<!--<img class='icon' id='icon0' src='../content/icon/1.png' class='list-avatar' />-->"+
						  "<span><b>"+ object.name[i] +"</b></span>"+
						  "<span class='mdl-list__item-text-body'>"+
						  "<i>"+ object.description[i] +"</i><br>"+
						  "Achieved at : <font size='-2' id='achv1' color='red'>"+ object.date[i]+ "</font>"+
						  "</span>"+
						"</span>"+
					  "</li>"
				+ "</a>"
					  } ; 
	return total
}

	



