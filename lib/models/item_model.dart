import 'package:intl/intl.dart';

class ItemModel {
  ItemModel({
    required this.id,
    required this.titile,
    required this.imageURL,
    required this.relaseDate,
  });

  final String id;
  final String titile;
  final String imageURL;
  final DateTime relaseDate;

  String daysLeft() {
    return relaseDate.difference(DateTime.now()).inDays.toString();
  }

  String releaseDateFormatted() {
    return DateFormat.yMMMEd().format(
        relaseDate); //ctrl + nacisniecie na odpowiedni format zabierze nas w możliwe do wyboru formaty
  }
}
