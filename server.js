import nodemailer from 'nodemailer';

// Konfiguracja transportera SMTP dla Gmaila
const transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: 'schronisko.zaulek@gmail.com',
    pass: 'xyz'
  }
});

// Lista użytkowników z ich adresami e-mail
const users = [
  { name: 'Lidia Radzikowska', email: 'liiidya@o2.pl' },
  { name: 'Anna Nowak', email: 'anna.nowak@example.com' }
  // Dodaj więcej użytkowników według potrzeb
];

// Funkcja wysyłająca e-mail do pojedynczego użytkownika
const sendEmail = (user) => {
  const mailOptions = {
    from: 'schronisko.zaulek@gmail.com',
    to: user.email,
    subject: 'Powiadomienie',
    text: `Witaj ${user.name},\n\nTo jest testowa wiadomość e-mail.\n\nPozdrawiamy,\nZespół`
  };

  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      console.log(`Błąd podczas wysyłania e-maila do ${user.email}:`, error);
    } else {
      console.log(`E-mail wysłany do ${user.email}: ${info.response}`);
    }
  });
};

// Wysyłanie e-maili do wszystkich użytkowników
users.forEach(sendEmail);
