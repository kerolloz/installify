#!/bin/bash
current_day=20
echo "Today is day #$current_day"

link="https://twitter.com/intent/tweet?text=%23100DaysOfCode%0ADay%20%23$current_day"
echo "Opening $link"
browse "$link"

((current_day++))
val="current_day=$current_day"
sed -i "1s/.*/$val/" $0 # update first line of the file
echo "Day incremented"