List<SenaraibilSubjek> senaraiSubjekSvm = [
  SenaraibilSubjek(tahun: "Tahun 1 Semester 1", semester: "1", bilSubjek: 3),
  SenaraibilSubjek(tahun: "Tahun 1 Semester 2", semester: "2", bilSubjek: 3),
  SenaraibilSubjek(tahun: "Tahun 2 Semester 3", semester: "3", bilSubjek: 3),
  SenaraibilSubjek(tahun: "Tahun 2 Semester 4", semester: "4", bilSubjek: 3),
];
List<SenaraibilSubjek> senaraiSubjekDvm = [
  SenaraibilSubjek(tahun: "Tahun 1 Semester 1", semester: "1", bilSubjek: 9),
  SenaraibilSubjek(tahun: "Tahun 1 Semester 2", semester: "2", bilSubjek: 9),
  SenaraibilSubjek(tahun: "Tahun 2 Semester 3", semester: "3", bilSubjek: 9),
  SenaraibilSubjek(tahun: "Tahun 2 Semester 4", semester: "4", bilSubjek: 11),
  SenaraibilSubjek(tahun: "Tahun 3 Semester 5", semester: "45", bilSubjek: 1),
];

class SenaraibilSubjek {
  String tahun;
  String semester;
  int bilSubjek;

  SenaraibilSubjek(
      {required this.tahun, required this.semester, required this.bilSubjek});
}
