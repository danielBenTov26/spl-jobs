-- 1
SELECT E.ename, E.city , e.street
FROM Employees E
JOIN Works W ON E.ename = W.ename
JOIN Companies C ON W.cname = C.cname
WHERE C.cname = 'bank israel';

--2
SELECT E.ename, E.street, E.city
FROM Employees E
JOIN Works W ON E.ename = W.ename
JOIN Companies C ON W.cname = C.cname
WHERE C.cname = 'bank israel' AND W.salary > 10000;
--3
SELECT E.ename
FROM Employees E
JOIN Works W ON E.ename = W.ename
JOIN Companies C ON W.cname = C.cname
WHERE E.city = C.city;
--4
SELECT E.ename
FROM Employees E
JOIN Manages M ON E.ename = M.ename
JOIN Employees Mr ON M.mname = Mr.ename
WHERE E.city = Mr.city AND E.street = Mr.street;
--5
SELECT E.ename
FROM Employees E
JOIN Works W ON E.ename = W.ename
JOIN Companies C ON W.cname = C.cname
WHERE C.cname != 'bank israel';


--6
SELECT E.ename
FROM Employees E
JOIN Works W ON E.ename = W.ename
JOIN Companies C ON W.cname = C.cname
WHERE C.cname = 'bank israel' AND W.salary >= (SELECT MAX(salary) FROM Works WHERE cname = 'bank israel');

--7
SELECT e.ename, c.cname
FROM Employees e
JOIN Works w ON e.ename = w.ename
JOIN Companies c ON w.cname = c.cname
WHERE w.salary > (
    SELECT AVG(w2.salary)
    FROM Works w2
    WHERE w2.cname = c.cname
);

--8

SELECT c.cname, COUNT(*) as num_employees
FROM Companies c
JOIN Works w ON c.cname = w.cname
GROUP BY c.cname
ORDER BY num_employees DESC
LIMIT 1;
