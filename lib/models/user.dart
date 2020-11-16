import 'package:meta/meta.dart';

class User{
  final String username;
  final String last_name;
  final String first_name;
  final String mid_initial;
  final String address;
  final String bgry;
  final String city;
  final String region;
  final String zip;
  final String age;
  final String phone_no;
  final String email;
  final bool isLoggedin;

  const User({
    @required this.username,
    this.last_name,
    this.first_name,
    this.mid_initial,
    @required this.address,
    @required this.bgry,
    @required this.city,
    @required this.region,
    @required this.zip,
    @required this.age,
    @required this.phone_no,
    @required this.email,
    this.isLoggedin = false,

  });
}