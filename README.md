Etap 1. Temat projektu:
Celem jest stworzenie wewnętrznego programu do zgłaszania problemów technicznych przystosowanego
do około 300 użytkowników. Użytkownicy logują się za pomocą konta służbowego (wewnętrznego konta 
firmowego zakładanego przez każdego pracownika). Wyróżniamy dwa podstawowe typy użytkowników: 
• pracowników działu technicznego 
• pracowników innych działów (zgłaszających problemy)
Użytkownicy nie będący pracownikami działu technicznego mają możliwość otwierania zgłoszeń oraz 
sprawdzania stanu utworzonych przez siebie zgłoszeń. Dział techniczny ma możliwość zmiany stanu 
zgłoszenia:
• nowy
• w trakcie
• rozwiązany
Posiada on wgląd do listy przydzielonych zgłoszeń. Użytkownik przy tworzeniu zgłoszenia musi utworzyć 
opis problemu oraz opcjonalnie może załączyć zdjęcie pojawiającego się problemu oraz dodać zdjęcie.

Etap 2. Wymagania funkcjonalne:
1. Wszyscy użytkownicy systemu mają możliwość zalogowania się kontem służbowym oraz założenia go.
2. Zablokowanie niezalogowanemu użytkownikowi możliwości zalogowanego użytkownika
3. Wyświetlenie odpowiedniego ekranu w zależności od typu użytkownika:
• członek działu technicznego powinien uzyskać widok pozwalający przejść do listy przypisanych mu zgłoszeń
• pracownicy działów innych niż dział pomocy technicznej powinni zostać przekierowani do widoku list 
utworzonych przez siebie zgłoszeń oraz możliwość utworzenia nowego
4. Tworzenie zgłoszeń o problemach technicznych.
5. Tworzenie zgłoszenia:
• data oraz informacje o zgłaszającym (Imię, Nazwisko oraz służbowy adres email w celach kontaktowych) 
powinny zostać dodane automatyczne
• użytkownik zgłaszając problem ma możliwość podania opisu problemu
• użytkownik ma możliwość dodania zdjęcia do swojego zgłoszenia
• po utworzeniu zgłoszenia zostaje nadany mu identyfikator
• stan zgłoszenia jest automatycznie ustawiany jako „Nowy”
6. Zablokowanie użytkownikowi dostępu do zasobów innych użytkowników
7. Automatyczne przydzielanie zgłoszeń do pracowników działu technicznego (nowe zgłoszenie powinno zostać 
przypisane dostępnemu pracownikowi, tzn. takiemu, który nie ma aktualnie przydzielonego zgłoszenia).
8. Rozwiązywanie zgłoszeń - widok pracownika:
• data zgłoszenia
• imię, nazwisko oraz służbowy email kontaktowy
• aktualny stan zgłoszenia (podlega on edycji przez pracownika technicznego)
• opis zgłoszenia zapewniony przez zgłaszającego oraz zdjęcie
• możliwość dodania rozwiązania problemu
9. Zablokowanie możliwości tworzenia nowych zgłoszeń przez pracowników działu technicznego w celu 
zabezpieczenia systemu przez oszustwem w postaci rozwiązywania własnych zgłoszeń
