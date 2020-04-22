SELECT COUNT(*) as total FROM flights;
SELECT origin, AVG(arrdelay) as prom_arribades, AVG(depdelay) as prom__sortides FROM flights GROUP BY origin;
SELECT origin, colYear, colMonth, AVG(arrdelay) as prom_arribades FROM flights GROUP BY origin, colYear, colMonth ORDER BY origin ASC;
SELECT city, colYear, colMonth, AVG(arrdelay) as prom_arribades FROM flights JOIN usairports ON Origin=IATA GROUP BY origin, colYear, colMonth ORDER BY city ASC, colYear ASC, colMonth ASC;
SELECT UniqueCarrier, colYear, colMonth, SUM(cancelled) as total_cancelled FROM flights JOIN carriers ON UniqueCarrier=CarrierCode GROUP BY colYear, colMonth, UniqueCarrier ORDER BY total_cancelled DESC, colYear, colMonth;
SELECT TailNum, SUM(Distance) as totalDistance FROM flights WHERE TailNum Like "N%" GROUP BY TailNum ORDER BY totalDistance DESC LIMIT 10;
SELECT UniqueCarrier, AVG(arrdelay) as retard_promig FROM flights GROUP BY UniqueCarrier HAVING retard_promig>10 ORDER BY retard_promig DESC;

