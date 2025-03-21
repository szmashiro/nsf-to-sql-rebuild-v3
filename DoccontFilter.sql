SELECT *
FROM Doccont
WHERE (DocNo, Version) IN (
    SELECT DocNo, MAX(Version)
    FROM Doccont
    WHERE Level = 100
    GROUP BY DocNo
)
AND Level = 100
AND DocNo <> "B10-OF-1";
