1. SELECT
    Id,
    Dt,
    RIGHT('0' + CAST(MONTH(Dt) AS VARCHAR(2)), 2) AS MonthWithLeadingZero
FROM Dates;
