import 'package:hive/hive.dart';

class AppDatabase {
  List appList = [];
  final mybox = Hive.box('appbox');

  void createData() {
    appList = [
      ['Spotify', 'assets/vectors/spotify', '10.12.2024', '10', false],
      ['Neflix', 'assets/vectors/netflix', '10.12.2024', '20', false],
    ];
  }

  void loadData() {
    appList = mybox.get('APPLIST');
  }

  void updateData() {
    mybox.put('APPLIST', appList);
  }
}

class userData {
  List myList = [];
  final mybox = Hive.box('userbox');

  void createData() {
    myList = [
     [0, 'user'],
    ];
  }

  void loadData() {
    myList = mybox.get('List');
  }

  void updateData() {
    mybox.put('List', myList);
  }
}
