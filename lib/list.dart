import 'package:flutter/material.dart';

List<Map<String, dynamic>> myList = [
  {
    "Item": "Accommodation",
    "Icon": const Icon(
      Icons.home,
      color: Color.fromRGBO(128, 0, 0, 1),
      size: 32.0,
    )
  },
  {
    "Item": "Sport venue",
    "Icon": const Icon(
      Icons.sports_soccer_sharp,
      color: Color.fromRGBO(128, 0, 0, 1),
      size: 32.0,
    )
  },
  {
    "Item": "Religious Centre",
    "Icon": const Icon(
      Icons.church,
      color: Color.fromRGBO(128, 0, 0, 1),
      size: 32.0,
    )
  },
  {
    "Item": "Restaurants",
    "Icon": const Icon(
      Icons.restaurant,
      color: Color.fromRGBO(128, 0, 0, 1),
      size: 32.0,
    )
  },
  {
    "Item": "Hospitals",
    "Icon": const Icon(
      Icons.local_hospital,
      color: Color.fromRGBO(128, 0, 0, 1),
      size: 32.0,
    )
  },
  {
    "Item": "Pharmacy",
    "Icon": const Icon(
      Icons.local_pharmacy,
      color: Color.fromRGBO(128, 0, 0, 1),
      size: 32.0,
    )
  },
  {
    "Item": "Supermarket",
    "Icon": const Icon(
      Icons.store_mall_directory,
      color: Color.fromRGBO(128, 0, 0, 1),
      size: 32.0,
    )
  },
];



List<Map<String, dynamic>> lasuMaleHostel = [

];


List<Map<String, dynamic>> lasuFemaleHostel = [

];

List<Map<String, dynamic>> unilagFemaleHostel = [
  {
    'name': 'Fagunwa Hall Unilag',
    'address': 'G99R+XQP Fagunwa Hall Unilag, Lagos',
    'image': 'assets/images/Fagunwa-Hall-2.webp'
  },
  {
    'name': 'Kofo Ademola Hall',
    'address': 'G97P+W8W, Ransome Kuti Rd, Yaba, Lagos 101245, Lagos',
    'image': 'assets/images/Fagunwa-Hall-2.webp'
  },
  {
    'name': 'Madam Tinubu Hall',
    'address': 'G9CR+4MM, Commercial Rd, University Of Lagos, Lagos 101245, Lagos',
    'image': 'assets/images/Madam_Tinubu_Hall.jpg'
  },
  {
    'name': 'Honours Hall',
    'address': 'University Of Lagos, Lagos 101245, Lagos',
    'image': 'assets/images/Honours_Hall.jpg'
  },
  {
    'name': 'Amina Hall',
    'address': 'University Of Lagos, University Rd, Yaba, Lagos 101245, Lagos',
    'image': 'assets/images/Queen_Amina_Hall.jpg'
  },
  {
    'name': 'Makama Hall',
    'address': 'G99R+QVP, Dan Fodio Boulevard, Akoka, Lagos 101245, Lagos',
    'image': 'assets/images/Aliyu_Makama_Hall.jpg'
  },
  {
    'name': 'Moremi Hall of Residence UNILAG Lagos',
    'address': 'Tafawa Balewa Way, University Of Lagos, Lagos 101245, Lagos',
    'image': 'assets/images/Moremi_Hall.jpg'
  },

];

List<Map<String, dynamic>> unilagMaleHostel = [
  {
    'name': 'Eni Njoku Hall',
    'address': 'Dan Fodio Boulevard, Yaba, Lagos 101245, Lagos',
    'image': 'assets/images/Eni_Njoku_hall.jpg'
  },
  {
    'name': 'King Jaja Hall',
    'address': 'G98X+F48, Tafawa Balewa Way, University Of Lagos, Lagos 101245, Lagos',
    'image': 'assets/images/King_Jaja_Hall.jpg'
  },
  {
    'name': 'Mariere Hall',
    'address': 'G99X+764, Mariere Pass, University Of Lagos, Lagos 101245, Lagos',
    'image': 'assets/images/Mariere_Hall.jpg'
  },
  {
    'name': 'Pro Saburi Biobaku Hall',
    'address': 'University Of Lagos, University Rd, Yaba, Lagos 101245, Lagos',
    'image': 'assets/images/Sabiru_Biobaku_hall.jpg'
  },
  {
    'name': 'Sodeinde Hall',
    'address': 'Dan Fodio St, Akoka, Lagos 101245, Lagos',
    'image': 'assets/images/Sodehinde_hall.jpg'
  },
  {
    'name': 'El Kanemi Hall - Unilag',
    'address': 'G98M+CQ4, Ransome Kuti Rd, Yaba, Lagos 101245, Lagos',
    'image': 'assets/images/The_El_Kaneme_hall.jpg'
  }
];


Map<String, dynamic> sportCentres = {
  'Unilag': {
    'name': 'Sports Center, University of Lagos Akoka',
    'address': 'University Of Lagos, University Rd, Yaba, Lagos 101245, Lagos',
    'image': 'assets/images/Unilag_Sport_Center.jpg'
  },
  'Lasu': {
    'name': 'Lasu sport center',
    'address': 'common room, Lasu Main Rd, Ojo, Lagos 102101, Lagos',
    'image': 'assets/images/LASU_Sports_Centre.jpg'
  }
};

Map<String, dynamic> religiousCentres = {
  'Unilag': [
    {
      'name': 'Chapel of Christ Our Light, University of Lagos',
      'address': 'Unilag Gate (University Road), Dan Fodio Street, Yaba, Lagos 101245, Lagos',
      'image': 'assets/images/Chapel_Unilag.jpg'
    },
    {
      'name': 'St. Thomas More Catholic Chaplaincy, University of Lagos',
      'address': 'University Of Lagos, University Rd, Akoka, Lagos 101245, Lagos',
      'image': 'assets/images/Methodist_Unilag.jpg'
    },
    {
      'name': 'Unilag Islamic Centre',
      'address': 'University Of Lagos, University Rd, Akoka, Lagos 101245, Lagos',
      'image': 'assets/images/Mosque_Unilag.jpg'
    },
  ],
  'Lasu': [
    {
      'name': 'LASU - Chapel Of Light',
      'address': 'F58X+XFX, Lagos State University, Ojo, Lagos 102101, Lagos',
      'image': 'assets/images/Mosque_Unilag.jpg'
    },
    {
      'name': 'St Augustine Catholic Church, iba',
      'address': 'F5VV+W3W, Ojo, Lagos 102101, Lagos',
      'image': 'assets/images/Mosque_Unilag.jpg'
    },
    {
      'name': 'LASU Mosque Central Mosque, OJO',
      'address': 'F58X+5XH, Ojo, Lagos 102101, Lagos',
      'image': 'assets/images/Lasu_Mosque.jpg'
    },
  ]
};


Map<String, dynamic> restaurantsCentre = {
  'Unilag':[
    {
      'name': 'Salado Cafeteria',
      'address': 'University Of Lagos, University Rd, Yaba, Lagos 101245, Lagos',
      'image': 'assets/images/Salado_Cafeteria.jpg'
    },
    {
      'name': 'Korede Spaghetti',
      'address': 'UNILAG, Amphi Theatre, University Of Lagos, Lagos 101245, Lagos',
      'image': 'assets/images/Korede_Spaghetti.jpg'
    },
    {
      'name': 'Iya Moria',
      'address': 'University Of Lagos, Lagos 101245, Lagos',
      'image': 'assets/images/Iya_Moria.jpg'
    },
    {
      'name': 'Ijay’s bistro',
      'address': '2001 cafeteria unilag, Yaba, Lagos 101245, Lagos',
      'image': 'assets/images/2001_Cafeteria.jpg'
    },
  ],
  'Lasu': [
    {
      'name': 'Olaiya staff food canteen',
      'address': 'Lasu senior staff club, Ojo, Lagos 080384, Lagos',
      'image': 'assets/images/Olaiya_Staff_Food_Canteen_Lasu.jpg'
    },
  ]
};


Map<String, dynamic> hospitals = {
  'Unilag': [
    {
      'name': 'KAAF Medical Laboratory and Maternity Centre (KAAF- MLMC)',
      'address': 'Akinpelu Adesola Rd, University Of Lagos, Lagos 101245, Lagos',
      'image': 'assets/images/Kaaf_Unilag.jpg',
    },
  ],
  'Lasu': [
    {
      'name': 'Lagos State University Primary Health Care Centre',
      'address': 'Ojo, Lagos 102101, Lagos',
      'image': 'assets/images/Lasu_Medical_Centre.jpg'
    },
    {
      'name': 'Law Clinic - Lagos State University',
      'address': 'F682+QWJ, Inside Lagos State University, Lagos - Badagry Expy, Ojo, Lagos',
      'image': 'assets/images/Law_clinic.jpg'
    },
  ]
};


Map<String, dynamic> pharmacy = {
  'Unilag': [
    {
      'name': 'Unilag Pharmacy',
      'address': 'G99V+CRC, Dan Fodio St, Yaba, Lagos 101245, Lagos',
      'image': 'assets/images/Unilag_Pharmacy.jpg',
    },
    {
      'name': 'YEM YEM PHARMACY',
      'address': 'University Of Lagos, University Rd, Yaba, Lagos 101245, Lagos',
      'image': 'assets/images/YEM_YEM_PHARMACY.jpg',
    }
  ]
};


Map<String, dynamic> supermarket = {
  'Unilag': [
    {
      'name': 'YEM YEM SUPERMARKET',
      'address': 'University of Lagos Campus, Unilag Main Shopping Complex, Dan Fodio St, Yaba, Lagos',
      'image': 'assets/images/yem_yem_market.jpg',
    }
  ],
  'Lasu': []
};