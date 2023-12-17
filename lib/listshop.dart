// To parse this JSON data, do
//
//     final shop = shopFromJson(jsonString);

import 'dart:convert';

Shop shopFromJson(String str) => Shop.fromJson(json.decode(str));

String shopToJson(Shop data) => json.encode(data.toJson());

class Shop {
    String deskripsi;
    String gambar;
    String harga;
    String nama;

    Shop({
        required this.deskripsi,
        required this.gambar,
        required this.harga,
        required this.nama,
    });

    factory Shop.fromJson(Map<String, dynamic> json) => Shop(
        deskripsi: json["deskripsi"],
        gambar: json["gambar"],
        harga: json["harga"],
        nama: json["nama"],
    );

    Map<String, dynamic> toJson() => {
        "deskripsi": deskripsi,
        "gambar": gambar,
        "harga": harga,
        "nama": nama,
    };
}
