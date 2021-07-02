%dw 2.0
output application/x-www-form-urlencoded
---
{
	quoteid: vars.createQuotePayload.id,
	timestamp: vars.createQuotePayload.timestamp,
	fxpair: vars.createQuotePayload.fxPair,
	fxrate: vars.createQuotePayload.fxRate,
	buyamount: vars.createQuotePayload.buyAmount,
	sellamount: vars.createQuotePayload.sellAmount
}