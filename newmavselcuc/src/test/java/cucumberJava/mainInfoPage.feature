@inDevelopment
Feature: main info page validation

Scenario: PU field is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
#When I goto https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite/register
Then Поле Пакет услуг exists
And Поле Пакет услуг редактируемое
And Поле Пакет услуг имеет тип Выпадающий список
And Поле Пакет услуг содержит значения Класс, Максимум

Scenario: Зарплатный клиент field is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Зарплатный клиент exists
And Поле Зарплатный клиент редактируемое
And Поле Зарплатный клиент имеет тип Переключатель
And Поле Зарплатный клиент имеет значение Нет
And Поле Зарплатный клиент содержит значения Да, Нет

Scenario: Фамилия field is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Фамилия exists
And Поле Фамилия редактируемое
And Поле Фамилия имеет тип Текстовое поле с подсказкой
And Поле Фамилия имеет значение пустое
And Поле Фамилия имеет длину 35 символов

Scenario: Фамилия field accepts english letters, russian letters, space and dash

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite

When I type "qWaS1~!@#$%^&*()_+Ё!№;%:?*()_+-={}[]<>?/\| to Фамилия
Then Поле Фамилия имеет значение qWaS1~!@#$%^&*


Scenario: Имя field is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Имя exists
And Поле Имя редактируемое
And Поле Имя имеет тип Текстовое поле с подсказкой
And Поле Имя имеет значение пустое
And Поле Имя имеет длину 35 символов

Scenario: Имя field accepts english letters, russian letters, space and dash

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite

When I type "qWaS1~!@#$%^&*()_+Ё!№;%:?*()_+-={}[]<>?/\| to Имя
Then Поле Имя имеет значение qWaS1~!@#$%^&*

Scenario: Отчество field is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Отчество exists
And Поле Отчество редактируемое
And Поле Отчество имеет тип Текстовое поле с подсказкой
And Поле Отчество имеет значение пустое
And Поле Отчество имеет длину 35 символов

Scenario: Отчество field accepts english letters, russian letters, space and dash

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite

When I type "qWaS1~!@#$%^&*()_+Ё!№;%:?*()_+-={}[]<>?/\| to Отчество
Then Поле Отчество имеет значение qWaS1~!@#$%^&*

Scenario: Имя на расчетной карте is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Имя на расчетной карте exists
And Поле Имя на расчетной карте редактируемое
And Поле Имя на расчетной карте имеет тип Текстовое поле
And Поле Имя на расчетной карте имеет значение пустое
And Поле Имя на расчетной карте имеет длину 35 символов

Scenario: Поле Имя на расчетной карте заполняется транслитерацией Имя + Отчество

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
When I type Петров to Фамилия
And I type Иван to Имя
Then Поле Имя на расчетной карте имеет значение Ivan Petrov

Scenario: Имя на расчетной карте field accepts english capital letters, space, dot, slash/ and dash

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite

When I type "qWaS1~!@#$%^&*()_+Ё!№;%:?*()_+-={}[]<>?/\| to Имя на расчетной карте
Then Поле Имя на расчетной карте имеет значение qWaS1~!@#$%^&*

Scenario: Кодовое слово is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Кодовое слово exists
And Поле Кодовое слово редактируемое
And Поле Кодовое слово имеет тип Текстовое поле
And Поле Кодовое слово имеет значение пустое
And Поле Кодовое слово имеет длину 35 символов

Scenario: Имя на расчетной карте field accepts english capital letters, space, dot, slash/ and dash

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite

When I type "qWaS1~!@#$%^&*()_+Ё!№;%:?*()_+-={}[]<>?/\| to Имя на расчетной карте
Then Поле Имя на расчетной карте имеет значение qWaS1~!@#$%^&*

Scenario: Дата рождения is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Дата рождения exists
And Поле Дата рождения редактируемое
And Поле Дата рождения имеет тип Дата
And Поле Дата рождения имеет значение пустое

Scenario: Дата рождения не может быть меньше 01.01.1920
Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
When I type 31.12.1919 to Дата рождения
And click Сохранить
Then Появляется ошибка Дата рождения не может быть меньше 01.01.1920

Scenario: Дата рождения не может быть больше вчерашней
Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
When I type сегодня to Дата рождения
And click Сохранить
Then Появляется ошибка Дата рождения не может быть больше вчерашней

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

Scenario: Пол is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Пол exists
And Поле Пол редактируемое
And Поле Пол имеет тип Переключатель
And Поле Пол содержит значения Мужской, Женский

Scenario: Место рождения is displayed

Given an open browser with https://anketa.alfabank.ru/alfaform_dc/step1?packetId=K01&platformId=alfasite
Then Поле Место рождения exists
And Поле Место рождения редактируемое
And Поле Место рождения имеет тип Текстовое поле с подсказкой
And Поле Место рождения имеет значение пустое
And Поле Место рождения имеет длину 35 символов