# Ответы на вопросы к вакансии "PHP-разработчик / web-программист" для компании "ИНТЕРВОЛГА"  
https://krasnodar.hh.ru/vacancy/42776431?from=favorite_vacancy_list

### 1. PHP и HTML  
Решение задания находится в папке task_1.  
  
Среди проблем, которые могут возникнуть - программа разбивает текст на слова, разделителем является пробел. Символы, идущие после слова без пробела будут одним целым: [...'точно', 'так', 'же,'...]  
Могут быть проблемы с распознаванием знаков, например "-" (дефис) будет интерпретирован как отдельное слово, если с обеих его сторон стоят пробелы.  
Последние два слова могут оказаться союзами, междометиями и так далее, например "...как одна, так и...", так что ссылка может быть незамента.  
Первые 180 слов могут закончиться словом с точкой, многоточием, другим символом, что будет смотреться "не очень" - троеточия будут добавлены к слову без разделителей ('С другими знаками....', 'Ничего не было видно:...').  

### 2. Веб-разработка  
Решение задания находится в папке task_2.  
  
Из исходного изображения создаем экземпляр GDImage, изменяем его размер с помощью imagescale() и сохраняем в новый файл через imagepng().   
Далее с помощью HTML загружаем на страницу уже отформатированный баннер  
  
### 3. БД  
В папке task_3 находится файл с запросами SQL, в котором осуществляется вызов соответствующих заданию запросов  
  
Без JOIN осуществляется неявное объединение таблиц. JOIN осуществляет это явно.  
JOIN - запрос позволяет вывести новую таблицу из таблиц a, b, при чем элементы новой таблицы будут объединены по принципу "логическое И" (пересечение).  
Запрос с JOIN подразумеват неявно INNER JOIN, внизу файла запросов я также выполнил запрос с LEFT JOIN, что возвращает все элементы левой таблицы и пересечения. Для элементов таблицы a, не имеющих соответсвия в таблице b, будет выведено NULL.  
  
### 4. Массивы  
Решение задания находится в папке task_4  
  
Написаны две функции - первая может создавать массив случайных значений (целые), вторая осуществляет просмотр массива и поиск в нем пар.  
В результате выводится сам массив и количество найденных в нем последовательных пар одинаковых элементов.  
