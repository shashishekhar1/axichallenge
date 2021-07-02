%dw 2.0
output application/json
---
{
	base: payload.buyCurrency,
	symbol: payload.sellCurrency,
	buyAmount: payload.buyAmount,
	sellAmount: payload.sellAmount,
	markupValue: p('calclation.markup')
}