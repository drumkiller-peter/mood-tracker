// ignore_for_file: public_member_api_docs, sort_constructors_first
class MoodItemModel {
  final String imagePath;
  final String title;

  MoodItemModel({required this.imagePath, required this.title});

  MoodItemModel copyWith({
    String? imagePath,
    String? title,
  }) {
    return MoodItemModel(
      imagePath: imagePath ?? this.imagePath,
      title: title ?? this.title,
    );
  }

  @override
  bool operator ==(covariant MoodItemModel other) {
    if (identical(this, other)) return true;

    return other.imagePath == imagePath && other.title == title;
  }

  @override
  int get hashCode => imagePath.hashCode ^ title.hashCode;
}
