//
//  RockPaperScissorsView.swift
//  RockPaperScissors
//
//  WHAT THIS GAME DOES NOW
//  You pick rock, paper or scissors. The computer picks one at random.
//  The app shows both moves and counts how many rounds you have played.
//  It can tell when a round is a tie.
//
//  WHAT IT DOES NOT DO YET
//  When the two moves are different, it only says "Someone won".
//  It does not know who!
//  Rock beats scissors, scissors beats paper, and paper beats rock.
//

import SwiftUI

// The picture for each move. These are emoji, so they are just text.
// TRY: Change these to other emoji to give the game a new theme.
let bananaEmoji: String = "🍌"
let frogEmoji: String = "🐸"
let pizzaEmoji: String = "🍕 "



// The game itself: what it remembers, what it shows on the screen,
// and what it does when you click a button.
struct RockPaperScissorsView: View {

    // MARK: - Stored properties

    // Each @State variable is something the game remembers.
    // When one of them changes, the screen updates by itself.

    // The name of each move, such as "Rock", and the emoji that shows it.
    // Before the first round, nobody has picked a move yet.
    @State var playerMove: String = "No move yet"
    @State var playerEmoji: String = "❓"
    @State var computerMove: String = "No move yet"
    @State var computerEmoji: String = "❓"

    // What happened in the last round.
    @State var result: String = "Let's play!"

    // How many rounds have been played.
    @State var roundsPlayed: Int = 0
    
    // The variable for what mode the game is in (easy/hard)
    @State var isGameEasy: Bool = true
    @State var difficulty: String = "Easy"
    
    @State var winningColour: Color = Color.teal

    // MARK: - Computed properties

    var body: some View {
        VStack(spacing: 24) {

            // The title at the top of the screen.
            Text("Banana Frog Pizza")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color.teal)
                // Shrink the title a little if it does not fit on one line.
                .lineLimit(1)
                .minimumScaleFactor(3)

            Spacer()
            
            Text("Level: \(difficulty)")
                .font(.headline)
                .foregroundStyle(Color.secondary)
            
        

            
// Buttons for easy and hard mode.
            HStack(spacing: 12) {
                Button {
                    chooseEasy()
                } label: {
                    VStack {
                        Text("😊 ")
                            .font(.system(size: 44))
                        Text("Easy")
                    }
                    .frame(maxWidth: .infinity)
                }
                
                Button {
                    chooseHard()
                } label: {
                    VStack {
                        Text("😡")
                            .font(.system(size: 44))
                        Text("Hard")
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .buttonStyle(.bordered)
            .font(.headline)
            .tint(Color.orange)
        

            // The two moves, side by side.
            HStack {
                VStack(spacing: 8) {
                    Label("You", systemImage: "person.fill")
                        .font(.headline)
                    Text(playerEmoji)
                        .font(.system(size: 90))
                    Text(playerMove)
                        .font(.title3)
                }
                .frame(maxWidth: .infinity)

                Text("vs")
                    .font(.title)
                    .foregroundStyle(Color.secondary)

                VStack(spacing: 8) {
                    Label("Computer", systemImage: "desktopcomputer")
                        .font(.headline)
                    Text(computerEmoji)
                        .font(.system(size: 90))
                    Text(computerMove)
                        .font(.title3)
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.vertical)
            .background(winningColour.opacity(0.15))
            .clipShape(RoundedRectangle(cornerRadius: 24))

            // The result of the round.
            Text(result)
                .font(.largeTitle)
                .bold()

            Spacer()

            // One button for each move the player can make.
            // The code inside the braces runs when that button is clicked.
            Text("Choose your move")
                .font(.headline)
                .foregroundStyle(Color.secondary)

            HStack(spacing: 12) {
                Button {
                    chooseBanana()
                } label: {
                    VStack {
                        Text(bananaEmoji)
                            .font(.system(size: 44))
                        Text("Banana")
                    }
                    .frame(maxWidth: .infinity)
                }

                Button {
                    chooseFrog()
                } label: {
                    VStack {
                        Text(frogEmoji)
                            .font(.system(size: 44))
                        Text("Frog")
                    }
                    .frame(maxWidth: .infinity)
                }

                Button {
                    choosePizza()
                } label: {
                    VStack {
                        Text(pizzaEmoji)
                            .font(.system(size: 44))
                        Text("Pizza")
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .buttonStyle(.bordered)
            .font(.headline)
            // TRY: Change teal to another colour. Change it in the title and the moves box too.
            .tint(Color.teal)
        

            Text("Rounds played: \(roundsPlayed)")
                .font(.headline)
                .foregroundStyle(Color.secondary)
        }
        .padding(32)
        .fontDesign(.rounded)
        // How big the game's window is on the Mac. It can be made taller or wider.
        .frame(minWidth: 520, minHeight: 700)
    }

    // MARK: - Functions

    // The player picked rock.
    func chooseBanana() {
        playerMove = "Banana"
        playerEmoji = bananaEmoji
        playRound()
    }

    // The player picked paper.
    func chooseFrog() {
        playerMove = "Frog"
        playerEmoji = frogEmoji
        playRound()
        
        
    }

    // The player picked scissors.
    func choosePizza() {
        playerMove = "Pizza"
        playerEmoji = pizzaEmoji
        playRound()
    }

    // The computer picks its move at random.
    func chooseComputerMove() {
        if isGameEasy == true {
            let randomNumber: Int = Int.random(in: 1...3)
            
            if roundsPlayed % 3 == 1 {
                let randomNumber: Int = 1
                computerMove = "Banana"
                computerEmoji = bananaEmoji }
            
            if roundsPlayed % 3 == 2 {
                let randomNumber: Int = 2
                computerMove = "Frog"
                computerEmoji = frogEmoji }
            
            if roundsPlayed % 3 == 0 {
                let randomNumber: Int = 3
                computerMove = "Pizza"
                computerEmoji = pizzaEmoji }
            }
        else {
            
            // Pick 1, 2 or 3. Each number stands for one move.
            let randomNumber: Int = Int.random(in: 1...3)
            
            if randomNumber == 1 {
                computerMove = "Banana"
                computerEmoji = bananaEmoji
            } else if randomNumber == 2 {
                computerMove = "Frog"
                computerEmoji = frogEmoji
            } else {
                computerMove = "Pizza"
                computerEmoji = pizzaEmoji
            }
        }
    }
    // Plays one round, once the player has picked a move.
    func playRound() {
        chooseComputerMove()
        roundsPlayed += 1


        if playerMove == computerMove {
            // TRY: Change what the game says when there is a tie.
            result = "It's a tie!"
            winningColour = Color.yellow
        } else {
            // This is where the game needs your help.
            // Who won: you, or the computer?
            // New as of Wed, Oct 21. Now displays who has won each round. 
            if playerMove == "Banana" &&
                computerMove == "Pizza" ||
                playerMove == "Frog" &&
                computerMove == "Banana" ||
                playerMove == "Pizza" &&
                computerMove == "Frog"
            {
                result = "Player won!"
                winningColour = Color.green
            }
            else
            {
                result = "Computer won!"
                winningColour = Color.red
            }
        }
    }
    // Easy and hard buttons.
    func chooseEasy() {
    isGameEasy = true
    difficulty = "Easy"
    }
    func chooseHard() {
    isGameEasy = false
    difficulty = "Hard"
    }
    
}

#Preview {
    RockPaperScissorsView()
}
