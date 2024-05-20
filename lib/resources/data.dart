import 'package:hive/hive.dart';

class appDatabase {
  List appList = [];
  final mybox = Hive.box('appbox');

  void createData() {
    appList = [
      ['Spotify','assets/vectors/spotify' , '10.12.2024', '10'],
      ['Neflix', 'assets/vectors/netflix','10.12.2024', '20'],
    ];
  }

  void loadData() {
    appList = mybox.get('APPLIST');
  }

  void updateData() {
    mybox.put('APPLIST', appList);
  }
}
