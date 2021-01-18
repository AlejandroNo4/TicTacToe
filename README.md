![](https://img.shields.io/badge/Microverse-blueviolet)

# Tic Tac Toe

> The classic Tic-Tac-Toe game in your terminal!


This project is part of the Microverse curriculum "Ruby." It is a Tic-Tac-Toe game that the user can play from the terminal. According to the instructions, the main objective was to create the game using OOP (Object Oriented Programming), applying Ruby Classes.

Tic Tac Toe is a two-player game, where turn by turn, both try to complete a line of their own "token" ("X" or "O") in a 3 x 3 grid.

## Installation

This project is a digital version of this fun game. To run it, you must have access to a terminal. If you don't know what it this, [click here](https://launchschool.com/books/command_line/read/introduction) for more information about this topic. :)

Also, you must have ruby installed on your computer. If you don't have it but wish to, [click here](https://www.ruby-lang.org/en/documentation/installation/) for the instructions.

In the same way, a [GitHub](https://github.com/) account. 

Once you have all this, at first, you have to clone the repository, [here](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository) you can find out how to make this possible.

Now that you have the repository in your local machine. Change the direction of the local file with your terminal. Just type "$ cd" (without the $ sign) and the path to reach the TicTacToe folder.

e.g. "$ cd User/Documents/TicTacToe"

You are done! Now to run the game, just type "$ main.rb" and have fun!

## Gameplay

The game at the first step asks the players for their names. It could be any character that the user wants. Having in mind that the X's and O's are assigned already in this way:

First player ---> "X"      Second player ---> "O"

The game starts and will ask the First player to choose their position based on the "maps" that will be displayed:

       1 | 2 | 3             - | - | - 
      ---+---+---           ---+---+---
       4 | 5 | 6             - | - | - 
      ---+---+---           ---+---+---
       7 | 8 | 9             - | - | -  

The chosen spot must be a number between 1 and 9, and it must be an available spot.

During the game, the player will fill the "map" on the right with their choices based on the numbered "map."
The game ends if there is a filled line with the same symbols (X" or "O") or there are no more spots, and the player makes their last choice. In case this happens, it will be a tie.

Here the first player "X" have won the game.


       x | - | O 
      ---+---+---
       - | x | - 
      ---+---+---
       O | - | x  


Here the game ends with a tie.


       x | X | O 
      ---+---+---
       X | O | O 
      ---+---+---
       O | X | x  

And that's all! Go ahead, try it by yourself. :)

## Built With

- Ruby 3.0.0
- VS Code
- Git

## Getting Started

**Please, before starting, verify that you accomplish the Requirements to continue.**

To get a local copy up and running follow these simple example steps.

### Prerequisites
- Ruby 2.6.0 or a later version.
- Access to a Terminal (and basic knowledge on the usage)
- GitHub account

### Setup
Just one step!
- Clone this repository into tour computer

### Usage
- In your Terminal, change the direction to the folder you just cloned
- Run the script file using main.rb 
- Have Fun!

## Authors

👤 **Author1**

- GitHub: [@AlejandroNo4](https://github.com/AlejandroNo4)
- Twitter: [@Alejand80002666](https://twitter.com/Alejand80002666)
- LinkedIn: [Alejandro Contreras Rodriguez](https://www.linkedin.com/in/alejandro-contreras-rodriguez-b524821b5)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [Issues page](https://github.com/AlejandroNo4/Tic-Tac-Toe/issues).

## Show your support

Give a ⭐️ if you like this project!
