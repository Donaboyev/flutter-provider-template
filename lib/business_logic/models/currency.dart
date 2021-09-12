class Currency {
  final String? isoCode;
  double amount;

  Currency(this.isoCode, {this.amount = 0}) {
    if (isoCode?.length != 3)
      throw ArgumentError('The ISO code must have a length of 3.');
    if (amount < 0) throw ArgumentError('amount cannot be negative');
  }
}
