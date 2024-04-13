class slideModel {
  final String title;
  final String deskripsi;
  final String image;

  slideModel({
    required this.title,
    required this.image,
    required this.deskripsi
  });
}

var slideList = [
  slideModel(title: "Teman Ngobrol Sejati", image: 'assets/onboard_1.svg', deskripsi: "Jadilah dirimu sendiri dengan dukungan penuh dari sahabat"),
  slideModel(title: "Teman AI Penuh Wawasan", image: 'assets/onboard_2.svg', deskripsi: "Jadilah dirimu sendiri dengan dukungan penuh dari sahabat"),
  slideModel(title: "Konseling Online Praktis", image: 'assets/onboard_3.svg', deskripsi: "Jadilah dirimu sendiri dengan dukungan penuh dari sahabat"),
];