[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=16107733&assignment_repo_type=AssignmentRepo)
# ppz_empty_with_gitignore

Plan projektu: Strona internetowa schroniska dla zwierząt
## 1. Tytuł projektu
Strona internetowa schroniska - Przeglądaj, rezerwuj i umawiaj się na spotkania ze zwierzętami
## 2. Skład zespołu
 - Gabriela Kozioł 
 - Marika Matłas 
 - Lidia Radzikowska 
## 3. Cel główny projektu
Umożliwienie użytkownikom przeglądania zwierząt dostępnych w schronisku, rezerwacji wybranych zwierząt oraz umawiania się na spotkania w celu adopcji.
## 4. Zakres funkcjonalności
Moduły:
•	Rejestracja i logowanie: Umożliwienie tworzenia konta i logowania się przez e-mail lub numer telefonu.
•	Przeglądanie zwierząt: Użytkownicy mogą przeglądać listę zwierząt z opcjami filtracji (rasa, wiek, płeć, osobowość).
•	Rezerwacja: Użytkownicy mogą zarezerwować zwierzę oraz umawiać się na spotkania.
Dodatkowe funkcjonalności:
•	Historia wcześniejszych adopcji użytkownika.
•	Anulowanie rezerwacji.
•	Powiadomienia o nowych zwierzętach dostępnych do adopcji.
Minimalna wersja produktu (MVP):
•	Rejestracja i logowanie.
•	Przeglądanie dostępnych zwierząt.
•	Rezerwacja wybranego zwierzaka.
## 5. Technologie
•	Języki programowania: HTML, CSS, JavaScript 
•	Frameworki: React/Vue (frontend), Django/Flask (backend)
•	Baza danych: MySQL
•	Narzędzia: Git, Firebase (do powiadomień)
## 6. Architektura systemu
Diagram:
•	Frontend: Interfejs użytkownika (aplikacja webowa)
•	Backend: Serwer aplikacji zarządzający logiką i danymi
•	Baza danych: Przechowywanie informacji o zwierzętach, użytkownikach i rezerwacjach
Opis: Frontend komunikuje się z backendem przez API, backend zapisuje dane w bazie danych, powiadomienia o dostępnych zwierzętach realizowane przez Firebase.
## 7. Harmonogram prac
Etap 1: Planowanie i projektowanie 
•	Opracowanie specyfikacji funkcjonalności.
•	Przygotowanie makiet interfejsu użytkownika.
Etap 2: Implementacja Frontend 
•	Tworzenie szkieletu strony (HTML, CSS) (Gabriela Kozioł).
•	Implementacja funkcji rejestracji i logowania.
•	Przeglądanie zwierząt (wyświetlanie z bazy danych).
Etap 3: Implementacja Backend 
•	 Ustalenie struktury bazy danych( Marika Matłas)
•	Tworzenie API do obsługi rejestracji, logowania, przeglądania i rezerwacji.
•	Implementacja systemu powiadomień(Lidia Radzikowska).
Etap 4: Integracja i testowanie 
•	Połączenie frontend z backend.
•	Testowanie funkcjonalności (rejestracja, rezerwacja, powiadomienia).
9. Kryteria sukcesu
•	Użytkownicy mogą łatwo rejestrować się, logować, przeglądać zwierzęta i rezerwować je.
•	System powiadomień działa bez zakłóceń.
10. Potencjalne ryzyka
•	Problemy z działaniem bazy danych.
•	Niskie zainteresowanie funkcjonalnościami.
•	Problemy z integracją frontend-backend.
