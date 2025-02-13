class TrendingMovie {
  final String title;
  final String backdrop;

  TrendingMovie({
    required this.title,
    required this.backdrop,
  });

  factory TrendingMovie.fromJson(Map<String,dynamic> map){
    return TrendingMovie(
        title: map['title'],
        backdrop: map['backdrop_path']);
  }

  Map<String , dynamic> toMap(){
    return {
      'title': title,
      'backdrop_path': backdrop,
    };
  }

}