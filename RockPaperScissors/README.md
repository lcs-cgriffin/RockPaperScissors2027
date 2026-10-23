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
- Added Easy and Hard mode. Easy mode picks in a pattern (Banana, frog, then pizza). Hard mode picks at random. 
- Added text that displays the current mode that the game is on. 

## Testing

| Test | Chosen input | What should happen | What did happen |
| --- | --- | --- | --- |
| Correct messages for each win |  Play as many rounds as needed, in order to see a tie, a win by the computer, and a win by the player |If the player wins, message should display "Player won!". If the computer wins, message should display "Computer won." If it is a tie, it should display "It's a tie!"  |Correct messages were displayed. For first round, I chose Banana and the computer chose Frog (frog beats banana) and the message "computer won" was displayed. For the second round it was a tie, and "It's a tie!" was displayed. Finally, when I chose Banana and the computer chose Pizza (Banana beats Pizza), the correct message of "Player won!" was displayed.  |
|  Easy mode working | Play three rounds on easy mode, selecting Banana each time  |Tie the first round, lose the second round, win the third round  | Tied first round, lost the second, and won the third |
| Hard mode working | Play four rounds on hard mode, selecting Banana each time | Results should be random, as the computer should be selecting randomly | Results were random. Won first round, lost second, and tied for third and fourth |

## Credits
 
- The starting game was written by Mr. Gordon.

