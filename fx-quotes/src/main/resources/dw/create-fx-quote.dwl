%dw 2.0
output application/json
var ba = if(vars.requestPayload.buyAmount != "" ) vars.requestPayload.buyAmount as Number else 0
var sa = if(vars.requestPayload.sellAmount != "" ) vars.requestPayload.sellAmount as Number else 0
var fxRa = vars.ratesResponse[vars.requestPayload.symbol] as Number
var markup = vars.requestPayload.markupValue as Number
var mrkUpFxRa = fxRa + ((fxRa * markup)/100)
---
{
	id: uuid(),
	timestamp: now() as Number {unit: "milliseconds"},
	fxPair: vars.requestPayload.base ++ "-" ++ vars.requestPayload.symbol,
	fxRate: mrkUpFxRa,
	sellAmount:  if(sa != 0) sa else if(ba != 0) ba/mrkUpFxRa else 0, 
	buyAmount: if(ba != 0) ba else if(sa != 0) sa*mrkUpFxRa else 0
}