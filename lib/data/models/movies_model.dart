class MoviesModel {
  String? backdropPath;
  String? title;
  String? originalTitle;
  String? overview;
  String? posterPath;
  String? releaseDate;
  double? voteAverage;

  MoviesModel({
    this.backdropPath,
    this.title,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.voteAverage,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {

    return MoviesModel(
      backdropPath: json['backdrop_path'],
      title: json['title'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      posterPath: json['poster_path'],
      voteAverage: json['vote_average'].toDouble(),
    );
    
  }
}
