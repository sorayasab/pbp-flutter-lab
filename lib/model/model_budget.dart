class Budget {
  late String title;
  late int nominal;
  late String type;
  late DateTime date;
  static List<Budget> dataBudget = <Budget>[];

  Budget({
    required this.title,
    required this.nominal,
    required this.date,
    required this.type,
  }) ;

}
