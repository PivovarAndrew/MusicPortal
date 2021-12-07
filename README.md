# MusicPortal

Music portal realization in Ruby On Rails

## Общее описание

Сервис представляет из себя портал, где пользователь может отслеживать все, что касается его музыкальных вкусов.
Сервис представляет из себя портал, где можно посмотреть информацию о треках, альбомах и исполнителях, отзывы других пользователей.
Основные роли: 
+ Администратор
+ Редактор
+ Обычный пользователь
+ Незарегистрированный пользователь

### Создание трека

Трек создается(редактируется, удаляется) редактором.
Сущность должна включать в себя:
+ Название
+ Описание
+ ссылка на Youtube или другой сервис
+ Дата выхода
+ Время или продолжительность
+ Страна(страны)
+ Ключевые слова(теги)
+ Основной и сопутствующие жанры
+ Исполнителя или группу
+ Превью картинку
+ Возрастные ограничения
 
Пользователи должны иметь возможность зайти на страницу списка треков, а также просмотра трека как сущности. 
Если же это альбом, необходимо иметь возможность добавить(удалять, редактировать, просматривать)  треки. 

### Создание альбома

+ Название
+ Описание
+ Превью картинка
+ Дата выхода

Должна быть реализована возможность добавлять(удалять, редактировать) просматривать страницу трека. На странице просмотра трека добавить возможность просмотреть альбом в виде списка или таблицы. 

Трек добавить(редактировать) в системе может только редактор. Обычный и незарегистрированный пользователь могут только 
1) просматривать список опубликованных треков(альбомов), актеров.
2) оценивать альбомы, отдельные треки


### Страничка трека

На данной странице необходимо показывать все атрибуты трека  а также средний рейтинг, кол-во пользователей, которые добавили трек в статус ‘нравиться’, число пользователей добавивших его в список  “хочу послушать”. Трек, который еще не был одобрен админом должен быть недоступен простым пользователям. 


### Назначение ролей

После регистрации пользователя в системе ему присваивается роль обычного
пользователя. Только админ может поменять его роль на любую (админ в том числе). 
Для того, чтобы этот процесс упростить можно сделать это через ActiveAdmin
панель (gem).

### Ролевая система

Администратор имеет все возможности на сайте - добавление, удаление, редактирование любой сущности. 
	
### Просмотр альбома и оценка

Пользователь может добавлять треки или исполнителя в одну из категорий - нравиться, хочу послушать, игнор.

Когда пользователь переводит альбом в статус “нравиться” - необходимо попросить его оставить комментарий и заставить оценить. Без оценки не должна быть возможность перевести в этот статус.  
Может оценивать каждый трек и альбом в общем и оставлять свой комментарий к каждому треку.

Оценку и комментарий могут оставить только зарегистрированные пользователи любых ролей. 

### Страница поиска треков

На странице поиска треков предоставить фильтр по категориям/подкатегориям, атрибутам сущности, тегам и всем возможным категориям.

Данной страничкой могут пользоваться все пользователи, в том числе и незарегистрированные пользователи. 

### Подписка на интересы

Пользователь должен иметь возможность оформить подписку, включающую себя свои интересы по вкусовым предпочтениям и в случае опубликования треков, совпадающими с его интересами он должен получить письмо с картинками и ссылками на трек. 

Для того, чтобы избежать большого количества писем, необходимо сделать настройку частоты такого оповещения(получать об обновлениях письмо один раз в день, раз в неделю, раз в месяц)

Залогиненный пользователь может менять только свои настройки, они доступны только ему.

### Главная страница

Главная страница для неавторизованного пользователя состоит из списка(таблицы) самых высокорейтинговых треков. Должна быть возможность найти интересующие треки по параметрам. 

Для авторизованного пользователя главная страница состоит из таблицы текущих треков пользователя. 

## Дополнительные задания(*)


### Интеграция с внешними сервисами(заполнение существующих данных)

Использовать Deezer.com  API для автоматического заполнения альбомов и треков. Пользователи вводят в поиск (трек или альбом), если в приложении нет такого трека, упущенная сущность заноситься в список для администрация для подтверждения загрузки через API. После того как результат с API будет обработан и сохранен в базу - пользователю, который искал эту сущность отправляется нотификация о добавлении интересующей его информации на сайт


### Страничка активности пользователя

Здесь должны показываться  все действия пользователя, относительно треков(альбомов, исполнителей) - добавлен комментарий,оценка сущностей, добавлены сущности в одну из трех категорий(как пример - лента активности на Github). 
У каждого пользователя должны быть настройки приватности, где он может сделать незаметной для остальных часть своей активности.
Посмотреть активность пользователя могут любые роли.


### Отчеты(статистика)

Все нижеперечисленные в этом отделе страницы(графики) доступны только администратору сайта. 
- Pie chart  по всем сущностям, где можно увидеть распределение треков(альбомов) по жанрам. 
- Bar chart - кол-во комментариев в системе за текущий год(по месяцам).
- Line chart - средняя оценка по треку(по месяцам) + вторая линия - кол-во пользователей, подслушавший этот трек. 

Для этого вначале необходимо выбрать трек(альбом). Этот функционал поможет выяснить аналитикам какие внешние события влияют на рейтинг альбома. 


### Система защиты от ботов и накрутки

За накрутку рейтингов(больше чем 200 оценок в день или достаточно много одиночных комментариев к разным ресурсам) пользователь попадает в список подозрительных, дальнейшая возможность оценивать сущности замораживается. Пользователю приходит email-оповещение. У редактора на страничке должна быть страничка с списком(таблицей) таких пользователей со средней оценкой за последнюю неделю по дням, с возможностью просмотреть комментарии каждого пользователя. 
Редактор и админ могут апрувить пользователя(продолжает дальше пользоваться ресурсом) или же заблокировать его - он не сможет пользоваться своим аккаунтом. 
