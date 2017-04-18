Feature: open client registration form

Scenario Outline: User can open client registration form

Given an open browser <browserName> with http://ufrvpndev.moscow.alfaintra.net/retail-mobilecrm-reg-client-ui
#When I goto http://ufrvpndev.moscow.alfaintra.net/retail-mobilecrm-reg-client-ui/register
Then 1 Регистрация клиента exists

  Examples:
    | browserName | 
    | safari | 