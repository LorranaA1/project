import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote.db");
    Database database = await openDatabase(
      path,
      version: 2,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'create table CARD (id INTEGER PRIMARY KEY, head varchar(100), image varchar(100), title varchar(100), introduction varchar(100), resume varchar(100), aplicacao varchar(100), equacao varchar(100), colorButton varchar(100), colorContent varchar(100), question, videos)";
    await db.execute(sql);

    sql =
    "INSERT INTO CARD (id, head, url_image, city, title, transport, validity, old_price, current_price, nights, discount, persons, free_cancellation) VALUES (1, 'Pacote Amsterdam', 'https://www.melhoresdestinos.com.br/wp-content/uploads/2019/02/passagens-aereas-amsterda-capa2019-03.jpg', 'Amsterdam, NLD', 'Pacote Amsterdam - 2022 e 2023', 'Aéreo + Hospedagem', '01 Jan 2022 a 31 Dez 2023', '5.486', '4.389', 8, 20, 2, 1);";
    await db.execute(sql);
  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if(oldVersion == 1 && newVersion == 2){
      String sql = "CREATE TABLE people (username varchar(100) PRIMARY KEY, password varchar(100))";
      await db.execute(sql);

      sql = "INSERT INTO people (username, password) VALUES ('fjuliaaf', '12345')";
      await db.execute(sql);
    }
  }

