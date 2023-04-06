import 'package:flutter/cupertino.dart';

class Product {
  @required
  String Judul;
  @required
  String ImgURL;
  @required
  int harga;
  @required
  String Deskripsi;

  Product(this.Judul, this.ImgURL, this.harga, this.Deskripsi);
}
