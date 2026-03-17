-- информация о покупках
SELECT
    ph."Date",
    c."LastName" || ' ' || c."FirstName" AS "ClientName",
    p."ProductName",
    s."Name" AS "ServiceName",
    w."LastName" || ' ' || w."FirstName" AS "WorkerName"
FROM
    "purchase_history" ph
    LEFT JOIN "client" c ON ph."IdClient" = c."IdClient"
    LEFT JOIN "products" p ON ph."IdProducts" = p."IdProducts"
    LEFT JOIN "service" s ON ph."IdServices" = s."IdServices"
    LEFT JOIN "worker" w ON ph."IdWorker" = w."IdWorker"
ORDER BY
    ph."Date" DESC;
-- изменение номера телефона покупателя 
UPDATE "client"
SET "Phone" = '96667432'
WHERE "IdClient" = 1;