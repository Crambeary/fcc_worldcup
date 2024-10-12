#! /bin/bash

# if [[ $1 == "test" ]]; then
#   PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
# else
#   PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
# fi

PSQL="psql --username=marct --dbname=worldcup -t --no-align -c"

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
  if [[ $YEAR != 'year' ]]
  then
    INSERT_VALUE_RESULT=$($PSQL "INSERT INTO games(year, round, winner, opponent, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', '$WINNER', '$OPPONENT', $WINNER_GOALS, $OPPONENT_GOALS);")
    if [[ $INSERT_VALUE_RESULT == "INSERT 0 1" ]]; then
      echo Inserted into games $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
    fi
  fi
done
