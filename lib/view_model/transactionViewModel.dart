import 'package:flutter/material.dart';

class TransactionsViewModel{
  String eventType;
  String time;
  String expense;
  IconData icon;

  TransactionsViewModel({required this.eventType, required this.expense, required this.time, required this.icon});
}