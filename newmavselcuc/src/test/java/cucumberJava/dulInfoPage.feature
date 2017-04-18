@testFeature
Feature: DUL info page validation

Scenario: Код вида ДУЛ is displayed
Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Код вида ДУЛ exists
And Поле Код вида ДУЛ редактируемое
And Поле Код вида ДУЛ имеет тип Выпадающий список
And Поле Код вида ДУЛ содержит значения Паспорт

Scenario: Серия ДУЛ field is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Серия ДУЛ exists
And Поле Серия ДУЛ редактируемое
And Поле Серия ДУЛ имеет тип Текстовое поле
And Поле Серия ДУЛ имеет значение пустое
And Поле Серия ДУЛ имеет длину 4 символов

Scenario: Серия ДУЛ field accepts english letters, russian letters, space and dash

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite

When I type "qWaS1~!@#$%^&*()_+Ё!№;%:?*()_+-={}[]<>?/\| to Серия ДУЛ
Then Поле Серия ДУЛ имеет значение qWaS1~!@#$%^&*

Scenario: Номер ДУЛ field is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Номер ДУЛ exists
And Поле Номер ДУЛ редактируемое
And Поле Номер ДУЛ имеет тип Текстовое поле
And Поле Номер ДУЛ имеет значение пустое
And Поле Номер ДУЛ имеет длину 4 символов

Scenario: Номер ДУЛ field accepts english letters, russian letters, space and dash

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite

When I type "qWaS1~!@#$%^&*()_+Ё!№;%:?*()_+-={}[]<>?/\| to Номер ДУЛ
Then Поле Номер ДУЛ имеет значение qWaS1~!@#$%^&*

Scenario: Организация, выдавшая ДУЛ field is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Организация, выдавшая ДУЛ exists
And Поле Организация, выдавшая ДУЛ редактируемое
And Поле Организация, выдавшая ДУЛ имеет тип Текстовое поле
And Поле Организация, выдавшая ДУЛ имеет значение пустое
And Поле Организация, выдавшая ДУЛ имеет длину 4 символов


Scenario: Организация, выдавшая ДУЛ field accepts english letters, russian letters, space and dash

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite

When I type "qWaS1~!@#$%^&*()_+Ё!№;%:?*()_+-={}[]<>?/\| to Организация, выдавшая ДУЛ
Then Поле Организация, выдавшая ДУЛ имеет значение qWaS1~!@#$%^&*

Scenario: Дата выдачи ДУЛ is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Дата выдачи ДУЛ exists
And Поле Дата выдачи ДУЛ редактируемое
And Поле Дата выдачи ДУЛ имеет тип Дата
And Поле Дата выдачи ДУЛ имеет значение пустое

Scenario: Дата выдачи ДУЛ field accepts english letters, russian letters, space and dash

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite

When I type "qWaS1~!@#$%^&*()_+Ё!№;%:?*()_+-={}[]<>?/\| to Дата выдачи ДУЛ
Then Поле Дата выдачи ДУЛ имеет значение qWaS1~!@#$%^&*

Scenario: Дата рождения должна быть меньше Даты выдачи ДУЛ
Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
When I type 31.12.2016 to Дата выдачи ДУЛ
And I type 31.12.2016 to Дата рождения
And click Сохранить
Then Появляется ошибка Дата рождения не может больше даты выдачи ДУЛ

Scenario: Дата рождения должна быть меньше Даты выдачи ДУЛ
Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
When I type 31.12.2015 to Дата выдачи ДУЛ
And I type 31.12.2016 to Дата рождения
And click Сохранить
Then Появляется ошибка Дата рождения не может больше даты выдачи ДУЛ

Scenario: Код подразделения field is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Код подразделения exists
And Поле Код подразделения редактируемое
And Поле Код подразделения имеет тип Текстовое поле
And Поле Код подразделения имеет значение пустое
And Поле Код подразделения имеет длину 4 символов

Scenario: Код подразделения field accepts english letters, russian letters, space and dash

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite

When I type "qWaS1~!@#$%^&*()_+Ё!№;%:?*()_+-={}[]<>?/\| to Код подразделения
Then Поле Код подразделения имеет значение qWaS1~!@#$%^&*