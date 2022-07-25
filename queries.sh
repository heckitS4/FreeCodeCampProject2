#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
WINNER_SUM=$($PSQL "SELECT SUM(winner_goals) FROM games")
OPPONENT_SUM=$($PSQL "SELECT SUM(opponent_goals) FROM games")
CUMULATIVE_GOALS=$(( $WINNER_SUM + $OPPONENT_SUM ))
echo $CUMULATIVE_GOALS

echo -e "\nAverage number of goals in all games from the winning teams:"
AVG_WINNER_GOALS=$($PSQL "SELECT AVG(winner_goals) FROM games")
echo $AVG_WINNER_GOALS

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
AVG_WINNER_GOALS=$($PSQL "SELECT ROUND( AVG(winner_goals), 2) FROM games")
echo $AVG_WINNER_GOALS

echo -e "\nAverage number of goals in all games from both teams:"
echo $($PSQL "SELECT AVG(winner_goals + opponent_goals) FROM games")

echo -e "\nMost goals scored in a single game by one team:"
echo $($PSQL "SELECT MAX(winner_goals) FROM games")

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo $($PSQL "SELECT COUNT(winner_goals) FROM games WHERE winner_goals > 2 ")

echo -e "\nWinner of the 2018 tournament team name:"
TOURNAMENT_WINNER_2018_ID=$($PSQL "SELECT winner_id FROM games WHERE round='Final' AND year=2018")
echo $($PSQL "SELECT name FROM teams WHERE team_id=$TOURNAMENT_WINNER_2018_ID")

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo $($PSQL "SELECT teams.name FROM teams INNER JOIN games ON teams.team_id = games.winner_id OR teams.team_id = games.opponent_id WHERE year=2014 AND round='Eighth-Final' ORDER BY name ASC")

echo -e "\nList of unique winning team names in the whole data set:"
echo $($PSQL "SELECT DISTINCT teams.name FROM teams INNER JOIN games ON teams.team_id = games.winner_id ORDER BY name ASC")

echo -e "\nYear and team name of all the champions:"
echo $($PSQL "SELECT games.year, teams.name FROM teams INNER JOIN games ON teams.team_id = games.winner_id WHERE round='Final' ORDER BY year ASC")

echo -e "\nList of teams that start with 'Co':"
echo $($PSQL "SELECT DISTINCT teams.name FROM teams INNER JOIN games ON teams.team_id = games.winner_id OR teams.team_id = games.opponent_id WHERE name LIKE 'Co%' ORDER BY name ASC")
