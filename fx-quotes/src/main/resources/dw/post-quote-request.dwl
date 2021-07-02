%dw 2.0
output application/json
---
{
	base: payload.buyCurrency,
	symbol: payload.sellCurrency,
	date: now() as String {format: "uuuu-MM-dd"},
	key: p('fixer.accessKey')
}