#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then
   WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

   if [[ -z $WINNER_ID ]]
   then
    INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")

    if [[ $INSERT_RESULT == "INSERT 0 1" ]]
    then
      echo Added winning team $WINNER
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    else
      echo Failed to add winning team $INSERT_RESULT
      exit
    fi
    else
      echo Winning team already exists $WINNER
   fi

   OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

   if [[ -z $OPPONENT_ID ]]
   then
    INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")

    if [[ $INSERT_RESULT == "INSERT 0 1" ]]
    then
      echo Added opponent team $OPPONENT
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    else
      echo Failed to add opponent team $INSERT_RESULT
      exit
    fi
    else
      echo Opponent team already exists $OPPONENT
   fi

   GAME_INSERT_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
   if [[ $GAME_INSERT_RESULT == "INSERT 0 1" ]]
   then
    echo Added game $WINNER vs $OPPONENT
   else
    echo Failed to add game $GAME_INSERT_RESULT
    exit
   fi
  fi
done