%dw 2.0
output application/json
---
{
		quoteid: payload.objectId,
		timestamp: payload.timestamp,
		fxpair: payload.fxpair,
		fxrate: payload.fxrate,
		buyamount: payload.buyamount,
		sellamount: payload.sellamount
}