class TaxModel {
  int totalSum;
  int currentSum;
  DateTime month;

  TaxModel(
      this.totalSum,
      this.currentSum,
      this.month,
  );

  //TODO: Remove hardcode and implement repo  logic
  static List<TaxModel> taxesForTest = [
    TaxModel(
        1000,
        87,
        DateTime.now()
    ),
    TaxModel(
        445,
        76,
        DateTime.now()
    ),
    TaxModel(
        899,
        67,
        DateTime.now()
    ),
  ];
}

