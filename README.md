# axichallenge
This repository has all the deliverables related to Axi Technical challenge.

Design Decisions

1. The API has been developed in mule soft runtime version 4.2.0. 
2. All the rest endpoints have been combined in single API fx-quotes considering they belong to object Quotes.
3. An online database has been used to save the fx quotes as local database was not available.
4. Fixer has bee integrated to fetch currency conversion quote but as I have only basic plan the base currency is always EUR.
5. Unit testing of the service has been done on local environment.
6. Details of the endpoints are given below.
6.1 POST  -> http://localhost:8091/api/v1/fx/quotes the endpoint is used for creating a new quote and saving in database.
6.2 GET   -> http://localhost:8091/api/v1/fx/quotes/{quoteId} the endpoint is used for getting an existing quote from database.
6.3 PATCH -> http://localhost:8091/api/v1/fx/quotes/{quoteid} the endpoint is used for updating a quote in database.

Link to the RAML file has been attached below for API details and payloads for each operation.

Assumptions.

Below assumptions have been taken for implementing the fx-quotes service.

1. As I have a basic plan for fixer it only takes base currency as EUR.
2. The markup percentage value for the fx rate is configured in the properties file and has been calculated and added to the base fx rate.
3. For updating fx-quotes, the fx rates are again fetched from fixer and all calculations are gain done and saved in database.
