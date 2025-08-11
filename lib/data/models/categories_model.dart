class CategoriesModel {
  final String title;
  final int id;

  CategoriesModel({
    required this.title,
    required this.id,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      title: json["title"] ?? "",
      id: json["id"],
    );
  }
}
