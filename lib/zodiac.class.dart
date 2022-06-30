class Zodiac {
  final int id;
  final String gambar;
  final String nama;
  final String deskripsi;

  const Zodiac({
    required this.id,
    required this.gambar,
    required this.nama,
    required this.deskripsi,
  });

  factory Zodiac.fromJson(Map<String, String> json) {
    return Zodiac(
      id: json['id'] as int, 
      gambar: json['gambar'] as String,
      nama: json['nama'] as String,  
      deskripsi: json['deskripsi'] as String, 
    );
  }
}