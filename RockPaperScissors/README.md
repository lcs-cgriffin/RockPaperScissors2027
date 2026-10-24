#  # Rock Paper Scissors
 
You against the computer. Click a move, and the computer picks one at random.
 
## How to play
 
1. Click **Banana**, **Frog**, or **Pizza**. 
2. Select **Easy** mode or **Hard** mode. 
3. The computer shows its move beside yours. 
4. Banana beats pizza, frog beats banana, and pizza beats frog.
 
## What I added
 
-  Changed rock to banana, paper to frog, and scissors to pizza. 
- Added personalized messsaging for who has won. Differenciates between a win from the computer or a win from the player. 
- Added Easy and Hard mode. Easy mode picks in a pattern (Pizza, then banana, then frog on a loop). Hard mode picks at random. 
- Added text that displays the current mode that the game is on. 
- Changes colour based on result. Green for win by player, red for loss, and yellow for tie. 

## Testing

| Test | Chosen input | What should happen | What did happen |
| --- | --- | --- | --- |
| Correct messages for each win | Set computer move to always be Banana. Then, play three turns, chosing Banana, then Frog, then Pizza. |If the player wins, message should display "Player won!". If the computer wins, message should display "Computer won." If it is a tie, it should display "It's a tie!"  | The message "Its a tie" was displayed for banana, "you lost" for frog, and "you won" for pizza. |
|  Easy mode working | Play three rounds on easy mode, selecting Banana each time  |Win the first round, tie the second round, lose the third round  | Won first round, tied the second, and lost the third |
| Hard mode working | Play four rounds on hard mode, selecting Banana each time | Results should be random, as the computer should be selecting randomly | Results were random. Won first round, lost second, and tied for third and fourth |
| Is the difficulty level displaying? | Switch the modes between Easy and Hard | The text should corrospond to the mode selected | The text corrosponds to the mode selected |
|  Correct colour change depending on result |  Switch the mode to easy, and select Banana as player choice each time.  |  The color result for the first move (Banana and Pizza) should be green, followed by yellow for a tie (Banana and Banana), and finaly red for a loss (Banana and Frog).  |  The correct colour results were displayed.  |

## Credits
 
- The starting game was written by Mr. Gordon.

