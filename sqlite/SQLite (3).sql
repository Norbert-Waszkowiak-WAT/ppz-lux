CREATE TABLE Adopcje (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_zwierzecia INTEGER,
    id_uzytkownika INTEGER,
    data_adopcji DATE,
    FOREIGN KEY (id_zwierzecia) REFERENCES Zwierzeta(id),
    FOREIGN KEY (id_uzytkownika) REFERENCES Uzytkownicy(id)
);
