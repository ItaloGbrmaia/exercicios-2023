class People {
  final int id;
  // final String title;
  final String name
      // final String institution;
      // final Map<String, dynamic> bio;
      // final String picture;
      // final int weight;
      // final Role role;
      // final String hash
      ;

  People({
    required this.id,
    // required this.title,
    required this.name,
    // required this.institution,
    // required this.bio,
    // required this.picture,
    // required this.weight,
    // required this.role,
    // required this.hash,
  });

  factory People.fromJson(Map<String, dynamic> json) {
    return People(
      id: json['id'],
      // title: json['title'],
      name: json['name'],
      // institution: json['institution'],
      // bio: json['bio'],
      // picture: json['picture'],
      // weight: json['weight'],
      // role: Role.fromJson(json['role']),
      // hash: json['hash'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;

    return data;
  }
}

// class Role {
//   final int id;
//   final Map<String, dynamic> label;

//   Role({
//     required this.id,
//     required this.label,
//   });

//   factory Role.fromJson(Map<String, dynamic> json) {
//     return Role(
//       id: json['id'],
//       label: json['label'],
//     );
//   }
// }




//  "people": [
//         {
//           "id": 340849,
//           "title": "prof_dr",
//           "name": "Stephen William Hawking",
//           "institution": "Universidade de Cambridge",
//           "bio": {
//             "pt-br": "\u003Cp\u003EDoutor em cosmologia, foi professor lucasiano em\u00e9rito na Universidade de Cambridge, um posto que foi ocupado por Isaac Newton, Paul Dirac e Charles Babbage. Foi, pouco antes de falecer, diretor de pesquisa do Departamento de Matem\u00e1tica Aplicada e F\u00edsica Te\u00f3rica (DAMTP) e fundador do Centro de Cosmologia Te\u00f3rica (CTC) da Universidade de Cambridge\u003C\/p\u003E\r\n"
//           },
//           "picture": "https:\/\/static.galoa.com.br\/file\/Eventmanager-Private\/styles\/large\/s3\/eventmanager_person\/Screenshot%202023-10-10%20at%2013.06.35.png?VersionId=4_z9e083e414507696175f50716_f10473fd681469d07_d20231010_m160744_c003_v0312007_t0020_u01696954064581\u0026itok=XSqu4FiW",
//           "weight": 0,
//           "role": {
//             "id": 441,
//             "label": {
//               "pt-br": "Palestrante"
//             }
//           },
//           "hash": "293d8e1924c5de3ab475d46002e0193f0b6100d305d38c89a5b91ce7eb6c8d75"
//         }
//       ],