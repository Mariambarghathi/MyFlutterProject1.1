/// List of api end points
class ApiRoutes {
  ApiRoutes._();

  static String base = 'http://10.0.2.2';
  static String meta = '$base/meta';
  static String register = '$base/signup';
  static String login = '$base/login';
  static String vendors = '$base/vendors';
  static String tables = '$base/tables';
  static String items = '$base/items';


  static String vendor(id) => '$base/vendors/$id';
}
