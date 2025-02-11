///
/// Class contains static constants of different
/// named routes available within app.
///
class AppNavigationRoute {
  AppNavigationRoute._();

  static const splash = "/";

  static const main = "/main";

  static String create({
    required String path,
    required Map<String, String> query,
  }) => Uri(path: path, queryParameters: query).toString();
}
