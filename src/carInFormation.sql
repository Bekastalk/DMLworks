--1--
--Отобразите  бренд, модель и цены всех машин
postgres=# select  brand, model, price from cars;

--2--
-- Отобразите количество всех автомобилей
postgres=# select count(*) from cars;

--3--
--Отобразите все автомобили бренда Hyundai
postgres=# select * from cars where brand='Hyundai';

--4--
--Отобразите все красные и синие автомобили
postgres=# select * from cars where color='Blue' or color='Red';

--5--
--Отобразите все автомобили, выпущенные с 2000 по 2010 год
postgres=# select * from cars where year_of_issue between  '2000' and '2010';

--6--
--Отобразите количество автомобилей марки  Chevrolet
postgres=# select count(*) as count_chevrolet from cars where brand ='Chevrolet';

--7--
--Отобразите средне-статистический год выпуска всех машин
postgres=# select round(avg(year_of_issue)) from cars;

--8--
--Отобразите все автомобили  брендов  Audi, Toyota, Kia и Ford
postgres=# select * from cars where brand in ('Audi','Toyota','Kia','Ford');

--9--
--Отобразите автомобили, где модель автомобиля начинается с «Т»
postgres=# select * from cars where brand like 'T%';

--10--
--Отобразите автомобили, где модель автомобиля заканчивается на «е»;
postgres=# select * from cars where brand like '%e';

--11--
--Отобразите бренды, содержащие только 5 символов
postgres=# select * from cars where brand like '_____';

--12--
--Отобразите общую сумму всех автомобилей марки Mercedes-Benz
postgres=# select count(*) as count_chevrolet from cars where brand ='Mercedes-Benz';

--13--
--Отобразите самую дорогую  и самую дешевую машину
postgres=# select brand, price, model from cars where price=(select max(price) from cars);
postgres=# select brand, price, model from cars where price=(select min(price) from cars);

--14--
--Отобразите все автомобили кроме марки  TOYOTA
postgres=# select * from cars where brand <> 'Toyota';

--15--
--Отобразите 10 самых дорогих автомобилей
postgres=# select brand,model, price from cars order by  price desc limit 10;

--16--
--Отобразите 10 новейших машин с 5-го по 15-е.
postgres=# select brand,model, year_of_issue from cars order by year_of_issue desc offset 5 limit 10;

--17--
--Отобразите все автомобили, кроме тех,  которые выпустились между 1995 и 2005;
postgres=# select * from cars where  year_of_issue not between '1995' and '2005';

--18--
--Вывести  автомобилей  одного цвета  и наибольшего количества
postgres=#  select color,count(*)from cars group by color order by count(*) desc limit 1;


