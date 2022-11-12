import 'package:flutter/foundation.dart';

abstract class DataBaseRequest{

  static String deleteTable(String table) => 'DROP TABLE $table';

  static const String tableRole = 'role';
  static const String tableUser = 'user';
  static const String tableCategory = 'category';
  static const String tableMaterial = 'material';
  static const String tableBrand = 'brand';
  static const String tableProduct = 'product';
  static const String tableCustomer = 'customer';
  static const String tableOrderStatus = 'status';
  static const String tableOrder = 'order';

  static const List<String> tableList = [
    tableRole,
    tableUser,
    tableCategory,
    tableMaterial,
    tableBrand,
    tableProduct,
    tableCustomer,
    tableOrderStatus,
    tableOrder,
  ];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _createTableCategory,
    _createTableMaterial,
    _createTableBrand,
    _createTableProduct,
    _createTableCustomer,
    _createTableOrderStatus,
    _createTableOrder,
  ];

  static const String _createTableRole =
      'CREATE TABLE "$tableRole"('
      '"id" INTEGER,'
      '"role" TEXT NOT NULL UNIQUE,'
      'PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableUsers =
      'CREATE TABLE "$tableUser"('
      '"id"	INTEGER,'
      '"login"	TEXT NOT NULL UNIQUE,'
      '"password"	TEXT NOT NULL,'
      '"id_role"	INTEGER,'
      'FOREIGN KEY("id_role") REFERENCES "role"("id") ON DELETE CASCADE,'
      'PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableCategory =
      'CREATE TABLE "$tableCategory"('
      '"id" INTEGER,'
      '"name" TEXT NOT NULL UNIQUE,'
      'PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableMaterial =
      'CREATE TABLE "$tableMaterial"('
      '"id" INTEGER,'
      '"name" TEXT NOT NULL UNIQUE,'
      'PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableBrand =
      'CREATE TABLE "$tableBrand"('
      '"id" INTEGER,'
      '"name" TEXT NOT NULL UNIQUE,'
      'PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableProduct =
      'CREATE TABLE "$tableProduct"('
      '"id" INTEGER,'
      '"name" TEXT NOT NULL,'
      '"price" REAL NOT NULL,'
      '"id_brand" INTEGER,'
      '"id_material" INTEGER'
      '"color" TEXT NOT NULL,'
      '"id_category" INTEGER,'
      'FOREIGN KEY("id_category") REFERENCES "category"("id") ON DELETE CASCADE,'
      'FOREIGN KEY("id_brand") REFERENCES "brand"("id") ON DELETE CASCADE,'
      'FOREIGN KEY("id_material") REFERENCES "material"("id") ON DELETE CASCADE,'
      'PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableCustomer =
      'CREATE TABLE "$tableCustomer"('
      '"id" INTEGER,'
      '"surname" TEXT NOT NULL,'
      '"name" TEXT NOT NULL,'
      '"middlename" TEXT'
      '"phoneNumber" TEXT NOT NULL,'
      'PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableOrderStatus =
      'CREATE TABLE "$tableOrderStatus"('
      '"id" INTEGER,'
      '"name" TEXT NOT NULL,'
      'PRIMARY KEY("id" AUTOINCREMENT))';


  static const String _createTableOrder =
      'CREATE TABLE "$tableOrder"('
      '"id" INTEGER,'
      '"id_product" INTEGER,'
      '"amount" INTEGER,'
      '"id_orderStatus" INTEGER,'
      '"id_customer" INTEGER,'
      'FOREIGN KEY("id_product") REFERENCES "product"("id") ON DELETE CASCADE,'
      'FOREIGN KEY("id_orderStatus") REFERENCES "status"("id") ON DELETE CASCADE,'
      'FOREIGN KEY("id_customer") REFERENCES "customer"("id") ON DELETE CASCADE,'
      'PRIMARY KEY("id" AUTOINCREMENT))';
}