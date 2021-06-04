class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

// YOU -current user
final User currentUser = User(
  id: 0,
  name: 'Nick Fury',
  imageUrl: 'images/nick-fury.jpg',
  isOnline: true,
);

// USERS
final User ironMan = User(
  id: 1,
  name: 'Anna Müller',
  imageUrl: 'images/anna.jpg',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: 'Sascha Belzowski ',
  imageUrl: 'images/sascha.jpg',
  isOnline: true,
);
final User hulk = User(
  id: 3,
  name: 'Bella Hadid',
  imageUrl: 'images/bella.jpeg',
  isOnline: false,
);
final User scarletWitch = User(
  id: 4,
  name: 'Angelina jolie',
  imageUrl: 'images/angelina.jpg',
  isOnline: false,
);
final User spiderMan = User(
  id: 5,
  name: 'Alicia Keys',
  imageUrl: 'images/alicia.jpg',
  isOnline: true,
);
final User blackWindow = User(
  id: 6,
  name: 'Öykü Metahan',
  imageUrl: 'images/Öykü.jpg',
  isOnline: false,
);
final User thor = User(
  id: 7,
  name: 'Kim Chung',
  imageUrl: 'images/kim.jpg',
  isOnline: false,
);
final User captainMarvel = User(
  id: 8,
  name: 'Monica Bellucci',
  imageUrl: 'images/monica.jpg',
  isOnline: false,
);
