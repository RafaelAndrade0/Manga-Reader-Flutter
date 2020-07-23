import 'dart:convert';

class Manga {
  final String title;
  final String thumbImage;
  final String description;
  Manga({
    this.title,
    this.thumbImage,
    this.description,
  });

  Manga copyWith({
    String title,
    String thumbImage,
    String description,
  }) {
    return Manga(
      title: title ?? this.title,
      thumbImage: thumbImage ?? this.thumbImage,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'thumbImage': thumbImage,
      'description': description,
    };
  }

  static Manga fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Manga(
      title: map['title'],
      thumbImage: map['thumbImage'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  static Manga fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() =>
      'Manga(title: $title, thumbImage: $thumbImage, description: $description)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Manga &&
        o.title == title &&
        o.thumbImage == thumbImage &&
        o.description == description;
  }

  @override
  int get hashCode =>
      title.hashCode ^ thumbImage.hashCode ^ description.hashCode;
}

List<Manga> mangaList = [
  Manga(
      title: 'Dragon Ball',
      description: '',
      thumbImage: 'assets/images/header.jpg'),
  Manga(
      title: 'Attack on Titan',
      description: '',
      thumbImage: 'assets/images/aot.jpg'),
  Manga(title: 'Dragon Ball', description: '', thumbImage: ''),
  Manga(title: 'Dragon Ball', description: '', thumbImage: ''),
];
