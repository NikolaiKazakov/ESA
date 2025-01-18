# Лабораторная работа 2
# Application using Spring Framework
## Бурлаков Алексей группа 6131-010402D
## Казаков Николай группа 6131-010402D

### General task
You are to develop an application using common Spring architecture and technologies. It should have three layers (data, logic, view) and provide means to work with a database.
It is strongly recommended to use version control and source code management system (like GitHub).
It is strongly recommended to use Maven to manage your project.
You can choose any IDE, but IntelliJ IDEA is recommended.

### Задание 1
Choose any subject area and make a model with at least two entities with a few properties.
Create a script to make a database for your model.
Yes, you can use the same models and scripts you used before.

Была использована та же база данных, что и в 1 лабораторной работе.

Мы использовали в реализации своего приложения Apache Tomcat 11.

![](/pictures/lab-2-pics/servletinitializer.png)

### Задание 2
Develop data layer as Java Beans for the model and make them prepared for use with Hibernate.
Create additional Hibernate classes and configuration files, as required.

Был создан репозиторий для работы с БД. Сделан HibernateConfig для подключения к БД, работали с PostgreSQL.

![](/pictures/lab-2-pics/hibernateconfig.png)

### Задание 3
Implement business layer using Spring beans.

Был реализован бизнес слой (пакет service/controller) и внедрен с помощью аннотаций @Service, @Controller.

BookService.java

![](/pictures/lab-2-pics/bookservice.png)

Controller.java

![](/pictures/lab-2-pics/bookcontroller.png)

### Задание 4
Implement view layer using Spring MVC.

Для слоя отображения в нашем веб-приложении мы использовали jsp.

Модели компьютерного зрения:

![](/pictures/lab-2-pics/cvmodels.png)

Книги:

![](/pictures/lab-2-pics/books.png)

### Задание 5
Make everything work together…

Показан результат добавления модели "RandomModelName":

![](/pictures/lab-2-pics/randommodeladded.png)






