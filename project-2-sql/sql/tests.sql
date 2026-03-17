-- 1 тест 
-- Проверка корректной вставки записи в таблицу worker
-- Ожидаемый результат: запись успешно добавлена, ошибок нет
INSERT INTO worker (
    "LastName",
    "FirstName",
    "MiddleName",
    "BirthDay",
    "PassportSeriesNumber",
    "DepartmentCode",
    "IdGender"
) VALUES (
    'Смирнов',
    'Дмитрий',
    'Алексеевич',
    '1995-07-21',
    '1234567890',
    '123456',
    1
);
-- Проверяем, что запись действительно появилась
SELECT
    "IdWorker",
    "LastName",
    "FirstName",
    "MiddleName",
    "BirthDay",
    "PassportSeriesNumber",
    "DepartmentCode",
    "IdGender"
FROM worker
WHERE "LastName" = 'Смирнов';