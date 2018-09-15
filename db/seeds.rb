# frozen_string_literal: true

puts 'destroying all users...'
User.destroy_all
puts 'users destroyed !'

puts 'creation 2 users...'

user1 = User.create(email: 'user1@user.fr', password: 'azertyuiop')
user2 = User.create(email: 'user2@user.fr', password: 'azertyuiop')

puts 'users created !'

puts 'destroying all albums...'
Album.destroy_all
puts 'albums destroyed !'

puts 'creating 30 albums...'

Album.create([
               { title: 'Souldier',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Jain',
                 photo: open('http://res.cloudinary.com/maxime/image/upload/v1535985851/MusicIncTest/Album_cover/61uo8JqNGRL._SL1200_.jpg'),
                 user: user1 },
               { title: 'Ceinture noire',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Maitre Gims',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996557/MusicIncTest/Album_cover/8181eyYdCfL._SL1417_.jpg'),
                 user: user1 },
               { title: 'Lithopédion',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Damso',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996556/MusicIncTest/Album_cover/964251431db5dd72e987532c10e1bb04.1000x1000x1.jpg'),
                 user: user1 },
               { title: 'Sweetener',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Ariana Grande',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996557/MusicIncTest/Album_cover/3893786.jpg'),
                 user: user1 },
               { title: 'Gentleman 2.0',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Dadju',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996557/MusicIncTest/Album_cover/ddfacae2adca3b3e5f877df9cc91c77d.899x899x1.jpg'),
                 user: user1 },
               { title: 'Marchand de sable',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Vegedream',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996556/MusicIncTest/Album_cover/51albSgUVwL._SS500.jpg'),
                 user: user1 },
               { title: "Il suffit d'y croire",
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Hoshi',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996558/MusicIncTest/Album_cover/500x500.jpg'),
                 user: user1 },
               { title: 'Woman WorldWide',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Justice',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996557/MusicIncTest/Album_cover/woman_worldwide_3lp2cd-44904338-.jpg'),
                 user: user1 },
               { title: 'Scorpion',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Drake',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996559/MusicIncTest/Album_cover/stream-scorpion-drake-new-album.png'),
                 user: user1 },
               { title: 'Commando',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Niska',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996558/MusicIncTest/Album_cover/9162b08a2a6e8bd12ecf07c75ca684e1.1000x1000x1.png'),
                 user: user1 },
               { title: 'La fête est finie',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Orelsan',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996557/MusicIncTest/Album_cover/orelsan-la-fete-est-finie-54041.jpg'),
                 user: user1 },
               { title: 'Bendero',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Moha la Squale',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996557/MusicIncTest/Album_cover/moha-la-squale-bendero.jpg'),
                 user: user1 },
               { title: 'Le revers de la médaille',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Djadja & Dinaz',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996557/MusicIncTest/Album_cover/djadja_dinaz-le_revers_de_la_medaille_a.jpg'),
                 user: user1 },
               { title: 'Queen',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Nicki Minaj',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996558/MusicIncTest/Album_cover/Queen.jpg'),
                 user: user2 },
               { title: 'Dans la légende',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'PNL',
                 photo: open('http://res.cloudinary.com/maxime/image/upload/v1535996560/MusicIncTest/Album_cover/pnl-dans_la_legende_a.jpg'),
                 user: user2 },
               { title: 'Evolve',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Imagine Dragons',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996556/MusicIncTest/Album_cover/41i7wmbLAtL._SX425_.jpg'),
                 user: user2 },
               { title: 'Flip',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Lomepal',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996560/MusicIncTest/Album_cover/3797f7a991c0600d46e87e9e12b3f947.960x960x1.jpg'),
                 user: user2 },
               { title: 'Liberté Chérie',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Calogero',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996558/MusicIncTest/Album_cover/calogero-liberte_cherie_a.jpg'),
                 user: user2 },
               { title: '13',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Indochine',
                 photo: open('http://res.cloudinary.com/maxime/image/upload/v1535996565/MusicIncTest/Album_cover/indochine-13_a.jpg'),
                 user: user2 },
               { title: 'Hit Sale',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Thérapie Taxi',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996557/MusicIncTest/Album_cover/b5196ea00b0e6e0e582dfaefa3fb33a2.960x960x1.jpg'),
                 user: user2 },
               { title: 'Trône',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Booba',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996558/MusicIncTest/Album_cover/booba-trone-54343.jpg'),
                 user: user2 },
               { title: 'Comme prévu',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Ninho',
                 photo: open('http://res.cloudinary.com/maxime/image/upload/v1535996560/MusicIncTest/Album_cover/ninho-comme-prevu-53901.png'),
                 user: user2 },
               { title: 'Marauder',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Interpol',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996556/MusicIncTest/Album_cover/Webp.net-resizeimage-1528314922-640x640.jpg'),
                 user: user2 },
               { title: 'Trop chaud',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Timal',
                 photo: open('http://res.cloudinary.com/maxime/image/upload/v1535996561/MusicIncTest/Album_cover/timal-trop_chaud_a.jpg'),
                 user: user2 },
               { title: 'Red Pill Blues',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Marron 5',
                 photo: open('http://res.cloudinary.com/maxime/image/upload/v1535996561/MusicIncTest/Album_cover/MAROON-5-_-RED-PILL-BLUES.jpg'),
                 user: user2 },
               { title: 'Morale 2',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Roméo Elvis',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535998334/MusicIncTest/Album_cover/DTZMnhoV4AAvH3x.jpg'),
                 user: user2 },
               { title: 'Appartement 105',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Keblack',
                 photo: open('http://res.cloudinary.com/maxime/image/upload/v1535996560/MusicIncTest/Album_cover/keblack-appartement-105-56274.jpg'),
                 user: user2 },
               { title: 'Addictions',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Amir',
                 photo: open('http://res.cloudinary.com/maxime/image/upload/v1535996561/MusicIncTest/Album_cover/amir__fr_-addictions_a.jpg'),
                 user: user2 },
               { title: 'Cure',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'Eddy de pretto',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996559/MusicIncTest/Album_cover/eddy-de-pretto-c-image-pochette-album-cover-cure.jpg'),
                 user: user2 },
               { title: 'Masque blanc',
                 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                 incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                 ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                 in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                 non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                 author: 'S.PRI noir',
                 photo: open('https://res.cloudinary.com/maxime/image/upload/v1535996558/MusicIncTest/Album_cover/spriii.jpg'),
                 user: user2 }
             ])

puts 'albums created !'
