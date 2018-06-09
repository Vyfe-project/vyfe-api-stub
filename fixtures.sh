#!/bin/sh
# This script fill Firebase database with some fixtures to build a test database into Firebase real time database

if ! dpkg-query -W jq > /dev/null; then
    echo "jq package is required to run this script. Install it with :\n  sudo apt install jq\n"
    exit
fi


BASE_URL="$1"

# Groups
GROUPS=0
GROUP_ID_1=$(curl --silent -d '{"name":"medical"}' $BASE_URL/groups.json | jq -r ".name")
if [ "$GROUP_ID_1" != "null" ]; then GROUPS=$((GROUPS+1)); fi
GROUP_ID_2=$(curl --silent -d '{"name":"intervention"}' $BASE_URL/groups.json | jq -r ".name")
if [ "$GROUP_ID_2" != "null" ]; then GROUPS=$((GROUPS+1)); fi
GROUP_ID_3=$(curl --silent -d '{"name":"équipement"}' $BASE_URL/groups.json | jq -r ".name")
if [ "$GROUP_ID_3" != "null" ]; then GROUPS=$((GROUPS+1)); fi
GROUP_ID_4=$(curl --silent -d '{"name":"mécanique"}' $BASE_URL/groups.json | jq -r ".name")
if [ "$GROUP_ID_4" != "null" ]; then GROUPS=$((GROUPS+1)); fi
GROUP_ID_5=$(curl --silent -d '{"name":"montagne"}' $BASE_URL/groups.json | jq -r ".name")
if [ "$GROUP_ID_5" != "null" ]; then GROUPS=$((GROUPS+1)); fi
GROUP_ID_6=$(curl --silent -d '{"name":"premiers secours"}' $BASE_URL/groups.json | jq -r ".name")
if [ "$GROUP_ID_6" != "null" ]; then GROUPS=$((GROUPS+1)); fi
GROUP_ID_7=$(curl --silent -d '{"name":"volontaires"}' $BASE_URL/groups.json | jq -r ".name")
if [ "$GROUP_ID_7" != "null" ]; then GROUPS=$((GROUPS+1)); fi
if [ $GROUPS -ge 7 ]; then
    COLOR="\033[0;32m"
else
    COLOR="\033[0;31m"
fi
echo "${COLOR}Created $GROUPS groups\033[0m"

# Sessions
SESSIONS=0
SESSION_ID_1=$(curl --silent -d '{"name":"Utilisation de la lance à incendie", "author":"Lieutenant Charcot", "fk_group":"'$GROUP_ID_2'", "video_link":"https://www.youtube.com/watch?v=yQR_iAR6suU", "date":"2018-04-23T15:25:43.511Z"}' $BASE_URL/sessions.json | jq -r ".name")
if [ "$SESSION_ID_1" != "null" ]; then SESSIONS=$((SESSIONS+1)); fi
SESSION_ID_2=$(curl --silent -d '{"name":"Utilisation de l\u0027échelle", "author":"Lieutenant Charcot", "fk_group":"'$GROUP_ID_2'", "video_link":"https://www.youtube.com/watch?v=Vh3bcsXIafk", "date":"2018-02-15T10:12:43.511Z"}' $BASE_URL/sessions.json | jq -r ".name")
if [ "$SESSION_ID_2" != "null" ]; then SESSIONS=$((SESSIONS+1)); fi
SESSION_ID_3=$(curl --silent -d '{"name":"La position latérale de sécurité", "author":"Caporal Gibert", "fk_group":"'$GROUP_ID_6'", "video_link":"https://www.youtube.com/watch?v=13rQHDR1_GQ", "date":"2018-05-15T10:34:43.511Z"}' $BASE_URL/sessions.json | jq -r ".name")
if [ "$SESSION_ID_3" != "null" ]; then SESSIONS=$((SESSIONS+1)); fi
SESSION_ID_4=$(curl --silent -d '{"name":"Utilisation de l\u0027hélicoptère en montagne", "author":"Lieutenant Charcot", "fk_group":"'$GROUP_ID_5'", "video_link":"https://www.youtube.com/watch?v=FSHo23ijBow", "date":"2018-05-15T10:34:43.511Z"}' $BASE_URL/sessions.json | jq -r ".name")
if [ "$SESSION_ID_4" != "null" ]; then SESSIONS=$((SESSIONS+1)); fi
if [ $SESSIONS -ge 4 ]; then
    COLOR="\033[0;32m"
else
    COLOR="\033[0;31m"
fi
echo "${COLOR}Created $SESSIONS sessions\033[0m"

# Tag_sets
TAG_SETS=0
TAG_SET_ID_1=$(curl --silent -d '{"name":"Pilotage hélico"}' $BASE_URL/tag_sets.json | jq -r ".name")
if [ "$TAG_SET_ID_1" != "null" ]; then TAG_SETS=$((TAG_SETS+1)); fi
TAG_SET_ID_2=$(curl --silent -d '{"name":"Intervention incendie"}' $BASE_URL/tag_sets.json | jq -r ".name")
if [ "$TAG_SET_ID_2" != "null" ]; then TAG_SETS=$((TAG_SETS+1)); fi
TAG_SET_ID_3=$(curl --silent -d '{"name":"Premiers secours : Arret cardiaque"}' $BASE_URL/tag_sets.json | jq -r ".name")
if [ "$TAG_SET_ID_3" != "null" ]; then TAG_SETS=$((TAG_SETS+1)); fi
if [ $TAG_SETS -ge 3 ]; then
    COLOR="\033[0;32m"
else
    COLOR="\033[0;31m"
fi
echo "${COLOR}Created $TAG_SETS tag_sets\033[0m"

# Tags
TAGS=0
TAG_ID_1=$(curl --silent -d '{"name":"Le pompier lache la lance", "left_offset":7000, "right_offset":3000, "fk_tag_set":"'$TAG_SET_ID_2'", "color":"orange"}' $BASE_URL/tags.json | jq -r ".name")
if [ "$TAG_ID_1" != "null" ]; then TAGS=$((TAGS+1)); fi
TAG_ID_2=$(curl --silent -d '{"name":"Le pompier abandonne la victime", "left_offset":7000, "right_offset":3000, "fk_tag_set":"'$TAG_SET_ID_3'", "color":"red"}' $BASE_URL/tags.json | jq -r ".name")
if [ "$TAG_ID_2" != "null" ]; then TAGS=$((TAGS+1)); fi
TAG_ID_3=$(curl --silent -d '{"name":"Le sauveteur ne sécurise pas le treuil", "left_offset":7000, "right_offset":3000, "fk_tag_set":"'$TAG_SET_ID_1'", "color":"green"}' $BASE_URL/tags.json | jq -r ".name")
if [ "$TAG_ID_3" != "null" ]; then TAGS=$((TAGS+1)); fi
TAG_ID_4=$(curl --silent -d '{"name":"Le pilote ne tient pas son altitude", "left_offset":7000, "right_offset":3000, "fk_tag_set":"'$TAG_SET_ID_1'", "color":"blue"}' $BASE_URL/tags.json | jq -r ".name")
if [ "$TAG_ID_4" != "null" ]; then TAGS=$((TAGS+1)); fi
TAG_ID_5=$(curl --silent -d '{"name":"Le pilote ne tient pas son cap", "left_offset":7000, "right_offset":3000, "fk_tag_set":"'$TAG_SET_ID_1'", "color":"orange"}' $BASE_URL/tags.json | jq -r ".name")
if [ "$TAG_ID_5" != "null" ]; then TAGS=$((TAGS+1)); fi
TAG_ID_6=$(curl --silent -d '{"name":"La mise en PLS n\u0027est pas bonne", "left_offset":7000, "right_offset":3000, "fk_tag_set":"'$TAG_SET_ID_3'", "color":"blue"}' $BASE_URL/tags.json | jq -r ".name")
if [ "$TAG_ID_6" != "null" ]; then TAGS=$((TAGS+1)); fi
if [ $TAGS -ge 6 ]; then
    COLOR="\033[0;32m"
else
    COLOR="\033[0;31m"
fi
echo "${COLOR}Created $TAGS tags\033[0m"

# Tag_sessions
TAG_SESSIONS=0
TAG_SESSION_ID_1=$(curl --silent -d '{"fk_tag":"'$TAG_ID_1'", "fk_session":"'$SESSION_ID_1'", "start":2000, "end":10000}' $BASE_URL/tag_sessions.json | jq -r ".name")
if [ "$TAG_SESSION_ID_1" != "null" ]; then TAG_SESSIONS=$((TAG_SESSIONS+1)); fi
TAG_SESSION_ID_2=$(curl --silent -d '{"fk_tag":"'$TAG_ID_3'", "fk_session":"'$SESSION_ID_4'", "start":12000, "end":14000}' $BASE_URL/tag_sessions.json | jq -r ".name")
if [ "$TAG_SESSION_ID_2" != "null" ]; then TAG_SESSIONS=$((TAG_SESSIONS+1)); fi
TAG_SESSION_ID_3=$(curl --silent -d '{"fk_tag":"'$TAG_ID_4'", "fk_session":"'$SESSION_ID_4'", "start":11000, "end":210000}' $BASE_URL/tag_sessions.json | jq -r ".name")
if [ "$TAG_SESSION_ID_3" != "null" ]; then TAG_SESSIONS=$((TAG_SESSIONS+1)); fi
TAG_SESSION_ID_4=$(curl --silent -d '{"fk_tag":"'$TAG_ID_4'", "fk_session":"'$SESSION_ID_4'", "start":19000, "end":29000}' $BASE_URL/tag_sessions.json | jq -r ".name")
if [ "$TAG_SESSION_ID_4" != "null" ]; then TAG_SESSIONS=$((TAG_SESSIONS+1)); fi
TAG_SESSION_ID_5=$(curl --silent -d '{"fk_tag":"'$TAG_ID_3'", "fk_session":"'$SESSION_ID_4'", "start":30000, "end":40000}' $BASE_URL/tag_sessions.json | jq -r ".name")
if [ "$TAG_SESSION_ID_5" != "null" ]; then TAG_SESSIONS=$((TAG_SESSIONS+1)); fi
TAG_SESSION_ID_6=$(curl --silent -d '{"fk_tag":"'$TAG_ID_4'", "fk_session":"'$SESSION_ID_4'", "start":33000, "end":410000}' $BASE_URL/tag_sessions.json | jq -r ".name")
if [ "$TAG_SESSION_ID_6" != "null" ]; then TAG_SESSIONS=$((TAG_SESSIONS+1)); fi
if [ $TAG_SESSIONS -ge 4 ]; then
    COLOR="\033[0;32m"
else
    COLOR="\033[0;31m"
fi
echo "${COLOR}Created $TAG_SESSIONS tag_sessions\033[0m"
