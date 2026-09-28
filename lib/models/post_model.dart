class PostModel {
  final int id;
  final int userId;
  final String title;
  final String body;

  PostModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  // TODO: Lengkapi factory constructor untuk parsing JSON ke Object.
  // Mahasiswa harus mengambil nilai id, userId, title, dan body dari json.
  factory PostModel.fromJson(Map<String, dynamic> json) {
    // Contoh selesai: return PostModel(id: json['id'], userId: json['userId'], ...);
    return PostModel(
      id: json['id'],
      userId: json['userId'],
      title: json['title'] ?? '',
      body: json['body'] ?? '',
    );
  }
}