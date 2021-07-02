%dw 2.0
output application/x-www-form-urlencoded
var ba = if(vars.requestPayload.buyAmount != "" ) vars.requestPayload.buyAmount as Number else 0
var sa = if(vars.requestPayload.sellAmount != "" ) vars.requestPayload.sellAmount as Number else 0
var fxRa = vars.ratesResponse[vars.requestPayload.sellCurrency] as Number
var markup = vars.markupValue.markUp as Number
var mrkUpFxRa = fxRa + ((fxRa * markup)/100)
---
{
	timestamp: now() as Number {unit: "milliseconds"},
	fxpair: vars.requestPayload.buyCurrency ++ "-" ++ vars.requestPayload.sellCurrency,
	fxrate: mrkUpFxRa,
	sellamount:  if(sa != 0) sa else if(ba != 0) ba/mrkUpFxRa else 0, 
	buyamount: if(ba != 0) ba else if(sa != 0) sa*mrkUpFxRa else 0
}