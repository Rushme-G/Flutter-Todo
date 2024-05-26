class MovieModel {
  int id;
  String title;
  String img;
  String description;
  List<String> genres;
  num rating;
  // int runtime;
  // int year;
  num runtime;
  num year;

  MovieModel({
    required this.id,
    required this.title,
    // required this.img,
    this.img =
        'https://cdn.pixabay.com/photo/2024/05/06/11/46/monster-8743173_640.jpg',
    required this.description,
    // required this.genres,
    this.genres = const [],
    required this.rating,
    required this.runtime,
    required this.year,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'title': String title,
        'summary': String summary,
        'background_image': String background_image,
        'year': num year,
        'rating': num rating,
        'runtime': num runtime,
        'genres': List<dynamic> genres,
      } =>
        MovieModel(
          id: id,
          title: title,
          description: summary,
          rating: rating,
          runtime: runtime,
          year: year,
          genres: genres.map((v) => v.toString()).toList(),
        ),
      _ => throw const FormatException('Format not supported.'),
    };
  }
}
