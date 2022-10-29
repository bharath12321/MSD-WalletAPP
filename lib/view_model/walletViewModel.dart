import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/view_model/transactionViewModel.dart';

//Expenses
//Lists of expenses
List<TransactionsViewModel> expenses1 = [
  TransactionsViewModel(eventType: 'Supermarket', expense: '- \$143.60', time: '1:39 PM', icon: Icons.shopping_cart_outlined),
  TransactionsViewModel(eventType: 'Fuel', expense: '- \$150.00', time: '11:36 AM', icon: Icons.local_gas_station),
  TransactionsViewModel(eventType: 'Restaurant', expense: '- \$88.60', time: '1:39 PM', icon: Icons.local_dining),
];

List<TransactionsViewModel> expenses2 = [
  TransactionsViewModel(eventType: 'Restaurant', expense: '- \$88.60', time: '1:39 PM', icon: Icons.local_dining),
  TransactionsViewModel(eventType: 'Parking Fee', expense: '- \$50.00', time: '11:36 AM', icon: Icons.directions_car),
];

class WalletViewModel{
  String cardNumber;
  String balance;
  List<TransactionsViewModel> expenses;

  WalletViewModel({required this.cardNumber, required this.balance, required this.expenses});

}
List<WalletViewModel> cards = [
  WalletViewModel(cardNumber: '1234 5678 9876 5432', balance: '\$1235.36', expenses: expenses1),
  WalletViewModel(cardNumber: '9876 5432 1012 3456', balance: '\$897.89', expenses: expenses1),
];