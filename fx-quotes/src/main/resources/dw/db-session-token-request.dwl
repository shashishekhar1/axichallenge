%dw 2.0
output application/x-www-form-urlencoded
---
{
	username: p('db.user'),
	password: p('db.pass')
}