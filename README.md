# vyfe-api-stub

This is a stub for WCS student to run Android and React apps.
The client for this stub is "Pompiers SDIS"
format : json

The API is a formal REST API and the following endpoints are avaiblable with no authentication.

## Endpoints :

### Groups

* GET /groups
* GET /groups/1
* POST /groups
* PUT /groups/1
* PATCH /groups/1
* DELETE /groups/1

Required params for POST and PUT : `name`

### Sessions

* GET /sessions
* GET /sessions/1
* POST /sessions
* PUT /sessions/1
* PATCH /sessions/1
* DELETE /sessions/1

Required params for POST and PUT : `name`, `author`, `fk_group`, `video_link`

### Tags

* GET /tags
* GET /tags/1
* POST /tags
* PUT /tags/1
* PATCH /tags/1
* DELETE /tags/1

Required params for POST and PUT : `name`, `tag_set`

### Tag_sessions

* GET /tag_sessions
* GET /tag_sessions/1
* POST /tag_sessions
* PUT /tag_sessions/1
* PATCH /tag_sessions/1
* DELETE /tag_sessions/1

Required params for POST and PUT : `fk_tag`, `fk_session`, `start`, `end`

### Tag sets

* GET /tag_sets
* GET /tag_sets/1
* POST /tag_sets
* PUT /tag_sets/1
* PATCH /tag_sets/1
* DELETE /tag_sets/1

Required params for POST and PUT : `name`

## Hosting

You can fond an instance of it here : [http://ns347471.ip-5-39-76.eu/vyfe-api-stub](http://ns347471.ip-5-39-76.eu/vyfe-api-stub)
