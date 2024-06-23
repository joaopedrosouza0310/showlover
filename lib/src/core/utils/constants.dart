abstract class Constants {
  static const String baseUrl = 'https://api.tvmaze.com/';
}

abstract class SharedPreferencesKeys {
  static const String dailyPictures = 'dailyPictures';
}

abstract class Endpoints {
  // * Pagination starts with int 0 (Zero)
  static String shows(int page) => 'shows?page=$page';

  static String showByName(String name) => 'singlesearch/shows?q=$name';

  static String seasons(int showId) => 'shows/$showId/seasons';

  static String episodes(int showId) => 'shows/$showId/episodes';
}
