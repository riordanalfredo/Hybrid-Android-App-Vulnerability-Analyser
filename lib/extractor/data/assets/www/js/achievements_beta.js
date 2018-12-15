// JavaScript Document
 
var achievementData ={
    data:[],        //collection of achievements data (the main)
}

var userData={
    unlocks:[]    //the collection of id as index and date
}


var nameVault = [

    "Banzai! That was easy..",
    "What year is it? It worked!",
    "The Maestro",
    "What is Gravity...??",
    "This is SPARTA!",

    

    
    
];

var titleVault = [
    "Musashi no Kimply",
    "Time Traveler Kimply",
    "Monsieur Kimply",
    "Major Kimply",
    "King Spartaly",


    
    

];
var logoVault = [
    "banzai.png",
    "future.png",
    "maestro.png",
    "astronaut.png",
    "sparta.png",

    
    


];
var descriptionVault = [
    "Reach a score above 30 in Easy mode",
    "Reach a score above 50 in Easy mode",
    "Reach a score above 30 in Normal mode",
    "Reach a score above 50 in Normal mode",
    "Reach highscore exactly 300 in any mode",


    
    

];

var secretVault = [
    "New Outfit",
    "Use this skin to gain Extra time 3 seconds",
    "Bonus 3 Hidden Colours",
    "Use this skin to reduced time penalty",
    "SECRET",
    


];



var STORAGE_KEY_USER = "userdata";
var checkUser = JSON.parse(localStorage.getItem(STORAGE_KEY_USER));



var STORAGE_KEY_ACHIEVEMENTS = "newachievements";
var checkExist = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));


    
function achievementCreator(theData,index){

    var idNumber = index
            theData.id = idNumber;
            theData.name = nameVault[index];
            theData.title =  titleVault[index];
            theData.logo = logoVault[index];
            theData.description =  descriptionVault[index];
            theData.secret =  secretVault[index];
            if(checkUser && checkUser.unlocks[idNumber].date !== ""){
                theData.unlocked = true;
            }
    return theData
}
            
function createNewAchievements(lengthAchievement){
    //Create Achievements here
        for(var i = 0; i < lengthAchievement;i++){
            var achievements = { //Always creating new object
                id:0,
                unlocked:false,
                date:"",
                name:"",
                title:"",
                logo:"",
                description:"",
            }
            achievementData.data.push(achievementCreator(achievements,i)) // Achievement 1

        }

    localStorage.setItem(STORAGE_KEY_ACHIEVEMENTS, JSON.stringify(achievementData)); 
            // set the data to local storage
            
}


function updateUserData(leftOver){
    for (var x = 0; x <= number_of_achievements-leftOver;x++){
        if(checkUser.unlocks[x].date !== ""){
            checkExist.data[x].unlocked = true;
            checkExist.data[x].date = checkUser.unlocks[x].date;
        }
    }
    for (var y=0;y<=leftOver;y++){
        var usr = {
                    id:0,
                    date:"",
                }
        checkUser.unlocks.push(usr);
    }
    localStorage.setItem(STORAGE_KEY_USER, JSON.stringify(checkUser));
}





var number_of_achievements = nameVault.length - 1;
function initializeAchievements(){
        
        if (checkExist && checkExist.data.length == number_of_achievements + 1){
            console.log("all good")
        }
        else if( checkExist && checkUser){
            //update condition
            var leftOver = Math.abs(number_of_achievements +1 - checkExist.data.length)
            console.log(leftOver);
            updateUserData(leftOver);
            createNewAchievements(nameVault.length);

        }
        else{
            // new Instalation
            for(var x =0;x <= number_of_achievements; x++){
                var usr = {
                    id:0,
                    date:"",
                }
                userData.unlocks.push(usr);
            }
            localStorage.setItem(STORAGE_KEY_USER, JSON.stringify(userData)); // set the data
            createNewAchievements(nameVault.length);
        }
}

 
function achievementCallee(index){
	  
	  // Get local storage
	  var achievementObject = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));
	 
	  // Fill the objects
      achievementObject.data[index].unlocked = true;
	  var d = new Date();
	  var tanggal = d.toUTCString();
	  achievementObject.data[index].date = tanggal;
      checkUser.unlocks[index].id = index;
      checkUser.unlocks[index].date = tanggal;
      localStorage.setItem(STORAGE_KEY_USER,JSON.stringify(checkUser));
	  
	  // Store back to Local Storage
	  var total = JSON.stringify(achievementObject);
      localStorage.setItem(STORAGE_KEY_ACHIEVEMENTS, total);
      
    
      
 
  var snackbarContainer = document.querySelector('#demo-toast-example');
  var showToastButton = document.querySelector('#demo-show-toast');
  var data = {message: 'UNLOCKED ACHIEVEMENT: '+ achievementObject.data[index].name};
  snackbarContainer.MaterialSnackbar.showSnackbar(data);
  
}



function showAchievements(){
    var achievements_id = document.getElementById("achievements");
    var objectAch = JSON.parse(localStorage.getItem(STORAGE_KEY_ACHIEVEMENTS));
    achievements_id.innerHTML = "<ul class='demo-list-three mdl-list'>" + calculate(objectAch.data) +"</ul> "
	
}

function calculate(object){
	var total = "";
    var theLogo = "";
    var theName
    
	for(var i=0; i<= number_of_achievements;i++){
        
        if(checkUser && checkUser.unlocks[i].date !== ""){
            theLogo =  object[i].logo;
            theName = "<font color='hotpink' >" +object[i].name + "</font>";
        }else{
            theLogo = "backg.png";
            theName = "LOCKED";
        }
        
		total += "<a style='text-decoration:none' href='skins.html'"+
					"<li class='mdl-list__item mdl-list__item--three-line'>"+
					"<span class='mdl-list__item-primary-content'>"+
						  "<img id='achv1_img' src=img/bonus/" + theLogo + " class='material-icons mdl-list__item-avatar'>"+
						  "<!--<img class='icon' id='icon0' src='../content/icon/1.png' class='list-avatar' />-->"+
						  "<span><b>"+ theName +"</b></span>"+
						  "<span class='mdl-list__item-text-body'>"+
						  "<i>"+ object[i].description +"</i><br>"+
						  "Achieved at : <font size='-2' id='achv1' color='hotpink'>"+ object[i].date+ "</font>"+
						  "</span>"+
						"</span>"+
					  "</li>"
				+ "</a>"
					  } ; 
	return total
}




	



