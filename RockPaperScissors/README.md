#  Banana Frog Pizza  #
 
You against the computer. Click a move, and the computer will pick one as well. 
 
## How to play
 
1. Select **Easy** mode or **Hard** mode. 
2. Click **Banana**, **Frog**, or **Pizza**. 
3. The computer shows its move beside yours. 
4. Banana beats pizza, frog beats banana, and pizza beats frog.
5. First player to 3 wins is the Champion. Click **Start new game** to begin new game. 
 
## What I added
 
-  Changed rock to banana, paper to frog, and scissors to pizza. 
- Added personalized messsaging for who has won.  
- Added Easy and Hard mode. Easy mode picks in a pattern (Pizza, then banana, then frog on a loop). Hard mode picks at random.
- Added text that displays the current mode that the game is on. . 
- Changes colour based on result. Green for win by player, red for loss, and yellow for tie. 
- Added "start new game button". Resets how many rounds played, message displayed, mode, and color. As well, the start new game button resets the mode the easy. 
- Added "first to three wins" feature. Buttons turn off with .Disabled when eaither computer gets 3 wins or player gets 3 wins. 
- Made the "start new game" button only appear after three wins.
- A constant that holds the number of wins needed to end the game. 
- 3 wins requied for ultimate win on Easy, 5 wins required for ultimate win on hard

## How it works
- To change the theme of the game, I changed the names of the variables and changing their display symbol emojis. For example, chooseRock became chooseBanana. 
- For the addition of personalized messagoing, I added a line that differenciates between a win from the computer or a win from the player. I did this by having the program reconize all the possible wins from the player, using && and ||. 
- To add easy and hard mode, I made two buttons that's functions change what mode the game is on. Easy mode picks in a pattern (Pizza, then banana, then frog on a loop). Hard mode picks at random. I did this by adding two new buttons and a function, along with the bool variable "isGameEasy". Using a If Else within the function, if isGameEasy == true, then using the lines "if roundsPlayed % 3 == x" (IF x = 1 for banana, IF ELSE and x= 2 for frog, ELSE for pizza), the computer selects its moves in the loop of Pizza, then Banana, then Frog. If hard mode is selected, then else will run, and the computer will select its moves at random using the "let randomNumber: Int = Int.random(in: 1... 3)" feature. 1 for banana, 2 for frog, and 3 for pizza. 
- To add text to display what the current mode is on, I added the line @state var difficulity: String = "x". The variable changes to "Easy" when the easy button is pressed, and "Hard" when the hard button is pressed. I did this by adding the line " difficulty = "Easy" underneath the chooseEasy function, and " difficulty = "Hard" underneath the chooseHard function. Finally, I added text underneath the title that follows the line of "Text("Level: \(difficulty)")".  
- To change the colour of the box based on the result, I added a new @state var called winningColor, which holds a color value. Underneath the function of playRound, the winningColor variable is changed if the result is a win, lose, or tie. 
-  To add the start new game button, I added a new button, and a function (startNewGame) that is run when the button is pressed. The function simply resests all of the @state variables, and returns the screen to the inital look. As well, the button resets the mode to easy. I did this because it makes the most sense to have each new game start on easy mode, and then have the player themselves decide if it should be hard. It lets the player chose their level of challange, not have the game choose the level for them. 
- To add the first to three wins button that diables the buttons, I added new variables computerWins and playerWins, which change by 1 when a the player or computer wins. I used a new line of code within the HStack declaring ".disabled(playerWins == 3 || computerWins == 3 ? true : false)".  
- To make the "Start new game button" appear after 3 wins, I did this by once the player or the computer is at 3 wins, the button appears. The button triggers the function "startNewGame". The button only appears when "playerWins == 3 || computerWins == 3". I did this by changing its opacity, using the line " .opacity(isGameOver == true ? 1.0 : 0.0)".
- To add the constant that holds the number of wins needed, I added a new constant in the let statements called "maximumWins". I used it in place of where I had previsously been typing "3". (For example, the line if computerWins == maximumWins || playerWins == maximumWins, instead of if computerWins == 3|| playerWins == 3). This is more efficiant than typing out 3 everytime, and it also helps avoid error. 
- To have the maximum wins needed to be the ultimate winner, I changed the maximumWins constant to a @State var. Under the function chooseEasy, it changes to 3. Under the function chooseHard, it sets to 5. It resets to 3 when a new game is started. I did this by having the function startNewGame reset it. 







## Testing

| Test | Chosen input | What should happen | What did happen |
| --- | --- | --- | --- |
| Correct messages for each win | Set computer move to always be Banana. Then, play three turns, chosing Banana, then Frog, then Pizza. |If the player wins, message should display "Player won!". If the computer wins, message should display "Computer won." If it is a tie, it should display "It's a tie!"  | The message "It's a tie!" was displayed for the tie, which was Banana. The message "Player won!" was displayed for the move of  pizza, and the message "Computer won!" was displayed for the move of frog.  |
|  Easy mode working | Play three rounds on easy mode, selecting Banana each time  |Win the first round, tie the second round, lose the third round  | Won first round, tied the second, and lost the third |
| Two wins (edge: one below 3) | Easy; I choose Banana for rounds 1 to 4 | “Player won!”, Player wins: 2, and the moves  still work | "Player won!", Player wins: 2, and the buttons did stil work. |
| Hard, computer plays Banana |  Line 296 fixed at 1; Hard; I choose Frog|  "Player won!" message should be displayed, buttons should still work.  |  "Player won!" was displayed, buttons still work.  |
|Hard, computer plays Frog |Line 296 fixed at 2; Hard; I choose Pizza | "Player won!" message should be displayed, buttons should still work. |"Player won!" message was displayed, buttons still work.|
| Hard, computer plays Pizza | Line 296 fixed at 3; Hard; I choose Banana | "Player won!" message should be displayed, buttons should still work. | "Player won!" message was displayed. Buttons still work. |
| New game after Hard. | Hard; play to 3 wins; click Start new game. | Moves should disable, and start new game button should appear. | Moves disabled, start new game button appeared. After clicking the button, the game was reset to its inital look. |
| Is the difficulty level displaying? | Switch the modes between Easy and Hard | The text should corrospond to the mode selected | The text corrosponds to the mode selected |
|  Correct colour change depending on result |  Switch the mode to easy, and select Banana as player choice each time.  |  The color result for the first move (Banana and Pizza) should be green, followed by yellow for a tie (Banana and Banana), and finaly red for a loss (Banana and Frog).  |  The correct colour results were displayed.  |
| Does start new button work? |  After playing a round, press "start new game button".  |  Rounds played should reset, the mode should go back to easy, and the color should go back to teal. |The game reset as expected.  |
| Does first to 3 wins disable buttons? |  Set player wins to 3. Then repeat with computer wins.  |Buttons should become disabled.  |Buttons became disabled.  |
| Does first to 3 wins display message that game is over and who has won overall? |  Set player wins to 3. Then repeat with computer wins.  |Buttons should become disabled. If computer has won, message of "Game is over! Computer is the overall winner!" Should be displayed. If player has won, message of "Game is over! Player is the overall winner!" should be displayed. |Correct messages were displayed, buttons were disabled.   |
| Does Start New Game button appear once game is over? |  Set player wins to 3. Repeat with computer wins.  |  Start new game button should appear at the bottom of the screen. When clicked, the screen should reset to its inital interface.  |  Button appeared, game reset as expected. Button dissapeared once game reset as well.  |
| Does the new variable maximumWins work in place of the number 3? |Set player wins to 3, repeat with computer wins. |The buttons should disable and a start new game button should appear.  | The buttons disabled and a start new game button appeared.  |
| Does the new maximumWins variable change to 3 on easy mode? |Set mode to easy, and player wins to 3.  |"Game is over! Player is the overall winner!" should be displayed, and the Start new game button should appear. |"Game is over! Player is the overall winner!" was displayed, start new game button appeared.  |
| Does maximumWins change to 5 on hard mode? | Set game mode to hard, and player wins to 5. | "Game is over! Player is the overall winner!" should be displayed, and the Start new game button should appear. | "Game is over! Player is the overall winner!" was displayed, and the Start new game button appeared. |
| Does maximumWins reset to 3 when start new game button is pressed? | Play round on hard until start new game button appears, then press, and play round until player has 3 wins. | ""Game is over! Player is the overall winner!" should be displayed, and the Start new game button should appear.| Correct message appeared, variable reset. |

## Credits
 
- The starting game was written by Mr. Gordon.
- All code edits were made by me, without assistance of AI tools. 

