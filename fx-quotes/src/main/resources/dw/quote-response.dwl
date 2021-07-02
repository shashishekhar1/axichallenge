%dw 2.0
output application/json
---
{
	quoteId: payload.objectId,
	fxRate: vars.createQuotePayload.fxRate,
	timestamp: vars.createQuotePayload.timestamp,
	fxPair: vars.createQuotePayload.fxPair,
	sellAmount: vars.createQuotePayload.sellAmount,
	buyAmount: vars.createQuotePayload.buyAmount
}