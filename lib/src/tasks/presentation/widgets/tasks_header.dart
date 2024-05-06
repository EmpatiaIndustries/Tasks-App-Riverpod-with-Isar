import 'package:tasks_app/src/tasks/domain/domain.dart';
import 'package:tasks_app/src/tasks/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:tasks_app/config/config.dart';
import 'package:go_router/go_router.dart';

class TasksHeader extends StatelessWidget {
  // final TransactionType transa6ctionType;
  // final int selectedMonth;

  const TasksHeader({
    super.key,
    // required this.transactionType,
    // required this.selectedMonth,
  });

  @override
  Widget build(BuildContext context) {
    // final String heroTag = 'transactions_header_${transactionType.name}';
    final double deviceWidth = MediaQuery.of(context).size.width;
    // final String month = getMonthName(selectedMonth);
    final int year = DateTime.now().year;
    // final String title = switch (transactionType) {
    //   TransactionType.income => 'Ingresos del mes',
    //   TransactionType.expense => 'Egresos del mes',
    //   TransactionType.outcome => 'Resultados ventas',
    // };
    // final IconData icon = switch (transactionType) {
    //   TransactionType.income => Icons.create,
    //   TransactionType.expense => Icons.create,
    //   TransactionType.outcome => Icons.download,
    // };
    // final Null Function() onPressed = switch (transactionType) {
    //   TransactionType.income => () {
    //       context.push(TransactionsRoute(transactionType).location);
    //     },
    //   TransactionType.expense => () {
    //       context.push(TransactionsRoute(transactionType).location);
    //     },
    //   TransactionType.outcome => () {
    //       context.push(const DownloadRoute().location);
    //     },
    // };
    // final String subtitle = transactionType == TransactionType.outcome
    //     ? 'Año $year'
    //     : '$month $year';

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'title',
                    style: TextStyle(
                      fontSize: deviceWidth * 0.064,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'subtitle',
                    style: TextStyle(fontSize: deviceWidth * 0.05),
                  ),
                ],
              ),
              const Spacer(),
              // transactionType != TransactionType.outcome
              //     ? Column(
              //         children: [
              //           FloatingActionButton(
              //             onPressed: onPressed,
              //             elevation: 0,
              //             backgroundColor: primaryColor,
              //             heroTag: heroTag,
              //             child: Icon(icon, color: Colors.white),
              //           ),
              //         ],
              //       )
              //     : const SizedBox()
            ],
          )
        ],
      ),
    );
  }
}
