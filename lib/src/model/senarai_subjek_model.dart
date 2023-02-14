var svm = [
  {
    "Tahun 1 Semester 1": [
      "KSK-1014   COMPUTER SYSTEM HARDWARE INSTALLATION",
      "KSK-1024   SERVER HARDWARE INSTALLATION",
      "KSK-1033   IP ADDRESS AND SUBNETTING"
    ]
  },
  {
    "Tahun 1 Semester 2": [
      "KSK-2013   COMPUTER SYSTEM SOFTWARE INSTALLATION",
      "KSK-2023   SERVER SOFTWARE INSTALLATION",
      "KSK-2033   NETWORK CABLING PREPARATION"
    ]
  },
  {
    "Tahun 2 Semester 3": [
      "KSK-3014   NETWORK CABLING INSTALLATION",
      "KSK-3024   COMPUTER NETWORK INSTALLATION",
      "KSK-3033   SWITCHING AND ROUTING MANAGEMENT"
    ]
  },
  {
    "Tahun 2 Semester 4": [
      "KSK-4014   COMPUTER NETWORK CONNECTIVITY",
      "KSK-4024   COMPUTER NETWORK MAINTENANCE",
      "KSK-4033   MOBILE DEVICE SETUP"
    ]
  }
];
var dvm = [
  {
    "Tahun 1 Semester 1": [
      "A01-1003   BAHASA MELAYU",
      "A02-1001   BAHASA INGGERIS",
      "A03-1001   MATHEMATICS",
      "A04-1001   SCIENCES",
      "A05-1001   SEJARAH",
      "A06-1001   PENDIDIKAN ISLAM",
      "A07-1001   PENDIDIKAN MORAL",
      "KSK-1014   COMPUTER SYSTEM HARDWARE INSTALLATION",
      "KSK-1024   SERVER HARDWARE INSTALLATION",
      "KSK-1033   IP ADDRESS AND SUBNETTING"
    ]
  },
  {
    "Tahun 1 Semester 2": [
      "A01-2003   BAHASA MELAYU",
      "A02-2001   BAHASA INGGERIS",
      "A03-2001   MATHEMATICS",
      "A04-2001   SCIENCES",
      "A05-2001   SEJARAH",
      "A06-2001   PENDIDIKAN ISLAM",
      "A07-2001   PENDIDIKAN MORAL",
      "KSK-2013   COMPUTER SYSTEM HARDWARE INSTALLATION",
      "KSK-2023   SERVER HARDWARE INSTALLATION",
      "KSK-2033   NETWORK CABLING PREPARATION"
    ]
  },
  {
    "Tahun 2 Semester 3": [
      "A01-3003   BAHASA MELAYU",
      "A02-3001   BAHASA INGGERIS",
      "AMT-3091   MATHEMATICS FOR TECHNOLOGY",
      "AMT-3121   SCIENCES FOR TECHNOLOGY",
      "A05-3001   SEJARAH",
      "A06-3001   PENDIDIKAN ISLAM",
      "A07-3001   PENDIDIKAN MORAL",
      "KSK-3014   NETWORK CABLING INSTALLATION",
      "KSK-3024   COMPUTER NETWORK INSTALLATION",
      "KSK-3033   SWITCHING AND ROUTING MANAGEMENT"
    ]
  },
  {
    "Tahun 2 Semester 4": [
      "A01-4003   BAHASA MELAYU",
      "A02-4001   BAHASA INGGERIS",
      "AMT-4091   MATHEMATICS FOR TECHNOLOGY",
      "AMT-4121   SCIENCES FOR TECHNOLOGY",
      "A05-4001   SEJARAH",
      "A06-4001   PENDIDIKAN ISLAM",
      "A07-4001   PENDIDIKAN MORAL",
      "KSK-4014   COMPUTER NETWORK CONNECTIVITY",
      "KSK-4024   COMPUTER NETWORK MAINTENANCE",
      "KSK-4033   MOBILE DEVICE SETUP"
    ]
  }
];

List<SenaraiSubjek> senaraiSubjekSvm = [
  SenaraiSubjek(tahun: "Tahun 1 Semester 1", semester: "1", subjek: svm[0]["Tahun 1 Semester 1"]!),
  SenaraiSubjek(tahun: "Tahun 1 Semester 2", semester: "2", subjek: svm[1]["Tahun 1 Semester 2"]!),
  SenaraiSubjek(tahun: "Tahun 2 Semester 3", semester: "3", subjek: svm[2]["Tahun 2 Semester 3"]!),
  SenaraiSubjek(tahun: "Tahun 2 Semester 4", semester: "4", subjek: svm[3]["Tahun 2 Semester 4"]!),
];
List<SenaraiSubjek> senaraiSubjekDvm = [
  SenaraiSubjek(tahun: "Tahun 1 Semester 1", semester: "1", subjek: dvm[0]["Tahun 1 Semester 1"]!),
  SenaraiSubjek(tahun: "Tahun 1 Semester 2", semester: "2", subjek: dvm[1]["Tahun 1 Semester 2"]!),
  SenaraiSubjek(tahun: "Tahun 2 Semester 3", semester: "3", subjek: dvm[2]["Tahun 2 Semester 3"]!),
  SenaraiSubjek(tahun: "Tahun 2 Semester 4", semester: "4", subjek: dvm[3]["Tahun 2 Semester 4"]!),
];

class SenaraiSubjek{
  String tahun;
  String semester;
  List<String> subjek;

  SenaraiSubjek({required this.tahun, required this.semester, required this.subjek});
}