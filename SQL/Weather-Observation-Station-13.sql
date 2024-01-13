select sum(lat_n)
from station
where trunc(lat_n,4)>38.7880
and trunc(lat_n, 4) < 137.2345;