# User API

## `GET /users`

**Response:**

- Status Code: 200
  
Sample Response:

```json
{
	"first_name": "Bob",
	"last_name": "ellen",
	"username": "bemmer",
	"email": "bobby@ellen.com"
}
```

## `POST /users`

**Body Parameters:**

- first_name: *string*
- last_name: *string*
- username: *string*
- email: *string*

**Response:**

- Status Code: 201
  
Sample Response:

```json
{
	"first_name": "Bob",
	"last_name": "ellen",
	"username": "bemmer",
	"email": "bobby@ellen.com"
}
```

