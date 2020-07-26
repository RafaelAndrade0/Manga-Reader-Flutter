import 'dart:convert';

class Manga {
  final String title;
  final String thumbImage;
  final String description;
  final double score;
  final String lastChapter;
  final String logo;
  Manga({
    this.title,
    this.thumbImage,
    this.description,
    this.score,
    this.lastChapter,
    this.logo,
  });

  Manga copyWith({
    String title,
    String thumbImage,
    String description,
    double score,
    String lastChapter,
    String logo,
  }) {
    return Manga(
      title: title ?? this.title,
      thumbImage: thumbImage ?? this.thumbImage,
      description: description ?? this.description,
      score: score ?? this.score,
      lastChapter: lastChapter ?? this.lastChapter,
      logo: logo ?? this.logo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'thumbImage': thumbImage,
      'description': description,
      'score': score,
      'lastChapter': lastChapter,
      'logo': logo,
    };
  }

  static Manga fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Manga(
      title: map['title'],
      thumbImage: map['thumbImage'],
      description: map['description'],
      score: map['score'],
      lastChapter: map['lastChapter'],
      logo: map['logo'],
    );
  }

  String toJson() => json.encode(toMap());

  static Manga fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Manga(title: $title, thumbImage: $thumbImage, description: $description, score: $score, lastChapter: $lastChapter, logo: $logo)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Manga &&
        o.title == title &&
        o.thumbImage == thumbImage &&
        o.description == description &&
        o.score == score &&
        o.lastChapter == lastChapter &&
        o.logo == logo;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        thumbImage.hashCode ^
        description.hashCode ^
        score.hashCode ^
        lastChapter.hashCode ^
        logo.hashCode;
  }
}

List<Manga> mangaList = [
  Manga(
      title: 'Dragon Ball',
      description: '',
      thumbImage: 'assets/images/header.jpg',
      score: 9.5,
      lastChapter: '280',
      logo: 'assets/images/db_logo.png'),
  Manga(
      title: 'Bleach',
      description: '',
      thumbImage: 'assets/images/bleach.jpg',
      score: 8.0,
      lastChapter: '300',
      logo: 'assets/images/bleach_logo.png'),
  Manga(
      title: 'AOT',
      description: '',
      thumbImage: 'assets/images/aot.jpg',
      score: 10,
      lastChapter: '540',
      logo: 'assets/images/logo_aot.png'),
  Manga(
      title: 'Naruto',
      description: '',
      thumbImage: 'assets/images/naruto.jpg',
      score: 8.5,
      lastChapter: '120',
      logo: 'assets/images/naruto_logo.png'),
];
