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
    INSERT_VALUE_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
    if [[ $INSERT_VALUE_RESULT == "INSERT 0 1" ]]; then
      echo Inserted into teams $WINNER
    fi
  fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
  if [[ $YEAR != 'year' ]]
  then
    INSERT_VALUE_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
    if [[ $INSERT_VALUE_RESULT == "INSERT 0 1" ]]; then
      echo Inserted into teams $OPPONENT
    fi
  fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
  if [[ $YEAR != 'year' ]]
  then
    WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name LIKE '$WINNER'")
    OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name LIKE '$OPPONENT'")
    INSERT_VALUE_RESULT=$($PSQL "INSERT INTO games(year, round, winner, opponent, winner_goals, opponent_goals, winner_id, opponent_id) VALUES($YEAR, '$ROUND', '$WINNER', '$OPPONENT', $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_TEAM_ID, $OPPONENT_TEAM_ID);")
    if [[ $INSERT_VALUE_RESULT == "INSERT 0 1" ]]; then
      echo Inserted into games $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
    fi
  fi
done
