%dw 2.0
output application/json
---
{
	quoteid: payload.objectId,
	fxPair: vars.dbReqPayload.fxpair,
	fxRate: vars.dbReqPayload.fxrate,
	sellAmount: vars.dbReqPayload.sellamount,
	buyAmount: vars.dbReqPayload.buyamount
}