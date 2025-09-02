import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sales Report',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('Item')),
                    DataColumn(label: Text('Quantity')),
                    DataColumn(label: Text('Price')),
                    DataColumn(label: Text('Total')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('Apples')),
                      DataCell(Text('10')),
                      DataCell(Text('[36m\$2[0m')),
                      DataCell(Text('[34m\$20[0m')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Bananas')),
                      DataCell(Text('5')),
                      DataCell(Text('[36m\$1[0m')),
                      DataCell(Text('[34m\$5[0m')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Cherries')),
                      DataCell(Text('20')),
                      DataCell(Text('[36m\$3[0m')),
                      DataCell(Text('[34m\$60[0m')),
                    ]),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Total Sales: \$85',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
