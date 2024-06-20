#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

R=$(($(($RANDOM%1000))+1))
echo Random number: $R

echo "Enter your username:"
read USER_NAME 

USERNAME="$($PSQL "SELECT username FROM userbase WHERE username='$USER_NAME'")"

if [[ -z $USERNAME ]] 
then  
  USERNAME=$USER_NAME
  $PSQL "INSERT INTO userbase (username,games_played,best_game) VALUES ('$USERNAME',0,0)"
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM userbase WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM userbase WHERE username = '$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."  
else
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM userbase WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM userbase WHERE username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
read G
NUMBER_OF_GUESSES=1

CATCHER(){
  echo $1
  read G
  GAME
}

GAME(){
  if [[ $G =~ ^-?[0-9]+$ ]]
  then
    while [[ $R -ne $G ]] 
    do
    if [[ $G =~ ^[0-9]+$ ]]
    then
      if [[ $R -gt $G ]]; then
      echo "It's higher than that, guess again:"
      elif [[ $R -lt $G ]]; then
      echo "It's lower than that, guess again:"
      fi
      read G
      NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))
    else
    CATCHER "That is not an integer, guess again:"
    fi
    done
  else
    CATCHER "That is not an integer, guess again:"
  fi
}
GAME

INSERT_TO_DATABASE2=$($PSQL "UPDATE userbase SET games_played = games_played + 1 WHERE username = '$USERNAME'")

if [[ $BEST_GAME -eq 0 ]]; 
then
  INSERT_TO_DATABASE3=$($PSQL "UPDATE userbase SET best_game = $NUMBER_OF_GUESSES WHERE username = '$USERNAME';")
else
  if [[ $NUMBER_OF_GUESSES -lt $BEST_GAME ]] 
  then
  INSERT_TO_DATABASE4=$($PSQL "UPDATE userbase SET best_game = $NUMBER_OF_GUESSES WHERE username = '$USERNAME';")
  fi
fi

echo -e "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $R. Nice job!"
