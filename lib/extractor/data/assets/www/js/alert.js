                var close= document.getElementById('myClose');

                // Get the <span> element that closes the modal
                var span = document.getElementsByClassName("closeReturn")[0];

                var play = document.getElementById("playButton");

               /*Stop The Game */

                function stopTheGame(){
                    document.getElementById("buttona").disabled = true;
                    document.getElementById("buttonb").disabled = true;
                    close.style.display = "block";
                    
                    var yourScore = document.getElementById("yourScore");
                    var highScore = document.getElementById("yourHighscore");
                
                    var tulis =  score ;
            
                    var tulis2 = highscorePan;

                    yourScore.innerHTML = tulis;
                    highScore.innerHTML = tulis2;
                }

            