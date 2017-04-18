@testFeature
Feature: main info page validation
Scenario: Поле Тип занятости содержит значения По постоянному контракту в организации, Собственный бизнес, Не трудоустроен
Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
And click Сохранить
Then Поле Тип занятости содержит значения По  постоянному контракту в организации, Собственный бизнес, Не трудоустроен



