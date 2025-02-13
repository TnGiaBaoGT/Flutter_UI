class NowPlayingMovie {
  final String title;
  final String backdrop;

  NowPlayingMovie({
    required this.title,
    required this.backdrop,
});

  factory NowPlayingMovie.fromJson(Map<String,dynamic> map){
    return NowPlayingMovie(
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