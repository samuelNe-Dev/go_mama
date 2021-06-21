class User {
  final int id;
  final String name;
  final String imageUrl;

  User({
    this.id,
    this.name,
    this.imageUrl,
  });
}

// Main User = the current user logged into the App
// Main User (you)
final User currentUser = User(
  id: 0,
  name: 'Nick Fury',
  imageUrl: 'images/nick-fury.jpg',
);

// The Contacts of the Main User
final User ironMan = User(
  id: 1,
  name: 'Anna Müller',
  imageUrl: 'images/anna.jpg',
);
final User captainAmerica = User(
  id: 2,
  name: 'Sascha Belzowski ',
  imageUrl: 'images/sascha.jpg',
);
final User hulk = User(
  id: 3,
  name: 'Bella Hadid',
  imageUrl: 'images/bella.jpeg',
);
final User scarletWitch = User(
  id: 4,
  name: 'Angelina jolie',
  imageUrl: 'images/angelina.jpg',
);
final User spiderMan = User(
  id: 5,
  name: 'Alicia Keys',
  imageUrl: 'images/alicia.jpg',
);
final User blackWindow = User(
  id: 6,
  name: 'Öykü Metahan',
  imageUrl: 'images/Öykü.jpg',
);
final User thor = User(
  id: 7,
  name: 'Kim Chung',
  imageUrl: 'images/kim.jpg',
);
final User captainMarvel = User(
  id: 8,
  name: 'Monica Bellucci',
  imageUrl: 'images/monica.jpg',
);
