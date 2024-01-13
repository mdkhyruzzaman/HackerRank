select round(lat_n, 4)
from (select rownum as sl, lat_n
    from (select lat_n
from STATION
order by lat_n))
where sl = (select count(lat_n)+1 from station)/2;
      