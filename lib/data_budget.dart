import 'package:counter_7/drawer.dart';
import 'package:counter_7/model_budget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  @override
  State<DataBudgetPage> createState() => _DataBudgetPageState ();
}

class _DataBudgetPageState extends State<DataBudgetPage>  {
  final dataWidget = <Widget>[];
  static final DateFormat formatter = DateFormat('yyyy-MM-dd');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Data Budget'),
    ),
    drawer: const DrawerPage(),
    body: ListView.builder(
        itemCount: Budget.dataBudget.length,
        itemBuilder: (context, index) {
          final budget = Budget.dataBudget[index];
          return ListTile(
            title: Text(budget.title),
            subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(budget.nominal.toString()),
                  Text(formatter.format(budget.date).toString()),
                  Text(budget.type),
                ]
            ),
          );
        }
    )
    );
  }
}


