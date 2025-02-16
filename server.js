import nodemailer from 'nodemailer';



const transporter = nodemailer.createTransport({
  host: "smtp.gmail.com", // np. "smtp.gmail.com"
  port: 465,
  secure: true,
  // requireTLS nie jest konieczne, ale jeśli chcesz je mieć:
  requireTLS: false,
  auth: {
    user: 'schronisko.zaulek@gmail.com',        // udostepnienie programowi mozliwosci wysylania maili
    pass: 'dujh avhu radh akxb'
  },
});

// Lista użytkowników z ich adresami e-mail
const users = [
  { name: 'Lidia Radzikowska', email: 'liiidya@o2.pl' },
  { name: 'Anna Nowak', email: 'anna.nowak@example.com' }
  // Dodaj więcej użytkowników według potrzeb
];

// Funkcja wysyłająca e-mail do pojedynczego użytkownika
const sendEmail = (user) => {     // argument user okresla dne uzytkownika do ktorego wysylamy maila
  const mailOptions = {
    from: 'schronisko.zaulek@gmail.com',
    to: user.email,
    subject: 'Powiadomienie',
    text: `Witaj ${user.name},\n\nTo jest testowa wiadomość e-mail.\n\nPozdrawiamy,\nZespół` // $ jest przed zmienna, ktora jest zmieniana n tekst
  };

  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      console.log(`Błąd podczas wysyłania e-maila do ${user.email}:`, error);  // console.log sprawia że na konsoli pokazuje się komunikat , error tez sie wyswietli
    } else {
      console.log(`E-mail wysłany do ${user.email}: ${info.response}`); //info response mowi ze email wyslal sie poprawnie
    }                                                                    // klamra z dolarem sluzy do tekstu
  });
};

// Wysyłanie e-maili do wszystkich użytkowników
users.forEach(sendEmail); // wysylamy maile uzytkownik po uzytkowniku ; (...) dzieki temu niemusimy 10 razy powatarzac funkcji od 20 do 25 linijki (wkladamy kod)
