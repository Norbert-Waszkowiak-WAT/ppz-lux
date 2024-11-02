CREATE TABLE Uzytkownicy (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    imie TEXT NOT NULL,
    nazwisko TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    telefon TEXT
);
