#!/bin/sh
# This script fill Firebase database with some fixtures to build a test database into Firebase real time database

BASE_URL="$1"

# Groups
HTTP_RESPONSE=$(curl --silent -d '{"name":"medical"}' $BASE_URL/groups.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"intervention"}' $BASE_URL/groups.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"équipement"}' $BASE_URL/groups.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"mécanique"}' $BASE_URL/groups.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"montagne"}' $BASE_URL/groups.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"premiers secours"}' $BASE_URL/groups.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"volontaires"}' $BASE_URL/groups.json)

# Sessions
HTTP_RESPONSE=$(curl --silent -d '{"name":"Utilisation de la lance à incendie", "author":"Lieutenant Charcot", "fk_group":2, "video_link":"https://www.youtube.com/watch?v=yQR_iAR6suU", "date":"2018-04-23T15:25:43.511Z"}' $BASE_URL/sessions.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"Utilisation de l\u0027échelle", "author":"Lieutenant Charcot", "fk_group":2, "video_link":"https://www.youtube.com/watch?v=Vh3bcsXIafk", "date":"2018-02-15T10:12:43.511Z"}' $BASE_URL/sessions.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"La position latérale de sécurité", "author":"Caporal Gibert", "fk_group":6, "video_link":"https://www.youtube.com/watch?v=13rQHDR1_GQ", "date":"2018-05-15T10:34:43.511Z"}' $BASE_URL/sessions.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"Utilisation de l\u0027hélicoptère en montagne", "author":"Lieutenant Charcot", "fk_group":5, "video_link":"https://www.youtube.com/watch?v=FSHo23ijBow", "date":"2018-05-15T10:34:43.511Z"}' $BASE_URL/sessions.json)

# Tags
HTTP_RESPONSE=$(curl --silent -d '{"name":"Le pompier lache la lance", "left_offset":7000, "right_offset":3000, "fk_tag_set":2, "color":"orange"}' $BASE_URL/tags.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"Le pompier abandonne la victime", "left_offset":7000, "right_offset":3000, "fk_tag_set":3, "color":"red"}' $BASE_URL/tags.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"Le sauveteur ne sécurise pas le treuil", "left_offset":7000, "right_offset":3000, "fk_tag_set":1, "color":"green"}' $BASE_URL/tags.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"Le pilote ne tient pas son altitude", "left_offset":7000, "right_offset":3000, "fk_tag_set":1, "color":"blue"}' $BASE_URL/tags.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"Le pilote ne tient pas son cap", "left_offset":7000, "right_offset":3000, "fk_tag_set":1, "color":"orange"}' $BASE_URL/tags.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"La mise en PLS n\u0027est pas bonne", "left_offset":7000, "right_offset":3000, "fk_tag_set":3, "color":"blue"}' $BASE_URL/tags.json)

# Tag_sessions
HTTP_RESPONSE=$(curl --silent -d '{"fk_tag":1, "fk_session":1, "start":2000, "end":10000}' $BASE_URL/tag_sessions.json)
HTTP_RESPONSE=$(curl --silent -d '{"fk_tag":3, "fk_session":4, "start":12000, "end":14000}' $BASE_URL/tag_sessions.json)
HTTP_RESPONSE=$(curl --silent -d '{"fk_tag":4, "fk_session":4, "start":11000, "end":210000}' $BASE_URL/tag_sessions.json)
HTTP_RESPONSE=$(curl --silent -d '{"fk_tag":4, "fk_session":4, "start":19000, "end":29000}' $BASE_URL/tag_sessions.json)
HTTP_RESPONSE=$(curl --silent -d '{"fk_tag":3, "fk_session":4, "start":30000, "end":40000}' $BASE_URL/tag_sessions.json)
HTTP_RESPONSE=$(curl --silent -d '{"fk_tag":4, "fk_session":4, "start":33000, "end":410000}' $BASE_URL/tag_sessions.json)

# Tag_sets
HTTP_RESPONSE=$(curl --silent -d '{"name":"Pilotage hélico"}' $BASE_URL/tag_sets.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"Intervention incendie"}' $BASE_URL/tag_sets.json)
HTTP_RESPONSE=$(curl --silent -d '{"name":"Premiers secours : Arret cardiaque"}' $BASE_URL/tag_sets.json)
