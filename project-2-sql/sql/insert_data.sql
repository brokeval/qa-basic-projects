INSERT INTO "gender" ("Gender")
VALUES
    ('М'),
    ('Ж');

INSERT INTO "manufacturers" ("Name", "StartDateWork")
VALUES
    ('ООО Розы', '2010-01-01'),
    ('ООО Цветы', '2009-01-01');

INSERT INTO "producttag" ("Name")
VALUES
    ('Роза белая'),
    ('Роза красная'),
    ('Лилия'),
    ('Тюльпан');

INSERT INTO "client" ("LastName", "FirstName", "MiddleName", "BirthDay", "Phone", "EMail", "IdGender")
VALUES
    ('Иванова', 'Ирина', 'Ивановна', '1992-03-15', '01234567', 'ivanova@mail.ru', 2),
    ('Сидорова', 'Алсу', 'Ивановна', '2003-04-05', '00123456', 'sidorova@mail.ru', 2),
    ('Сидоров', 'Иван', 'Юрьевич', '1990-09-09', '01234567', 'ivan@mail.ru', 1);

INSERT INTO "worker" ("LastName", "FirstName", "MiddleName", "BirthDay", "PassportSeriesNumber", "DepartmentCode", "IdGender")
VALUES
    ('Петрова', 'Анна', 'Сергеевна', '1985-10-20', '4510123456', '123456', 2);

INSERT INTO "products" ("ProductName", "IdManufacturer", "IdProductTag")
VALUES
    ('Роза красная', 1, 2),
    ('Роза белая', 1, 1),
    ('Лилия', 2, 3),
    ('Тюльпан', 2, 4);

INSERT INTO "service" ("Name", "Description", "Price")
VALUES
    ('Доставка', 'Доставка цветов по городу', 300.00);

INSERT INTO "purchase_history" ("Date", "IdClient", "IdProducts", "IdServices", "IdWorker")
VALUES
    (CURRENT_DATE, 1, 1, 1, 1);