CREATE TABLE Zwierzeta (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    imie TEXT NOT NULL,
    gatunek TEXT NOT NULL,
    rasa TEXT,
    wiek INTEGER,
    plec TEXT CHECK(plec IN ('M', 'K')),
    status TEXT CHECK(status IN ('Dostępny', 'Adoptowany' )) DEFAULT 'Dostępny'
);