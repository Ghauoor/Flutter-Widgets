import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle titles = const TextStyle(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    return DataTable(
      columns: <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: titles,
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: titles,
          ),
        ),
        DataColumn(
          label: Text(
            'Color',
            style: titles,
          ),
        ),
      ],
      rows: <DataRow>[
        DataRow(
          cells: [
            DataCell(Text(
              'Ghayoor',
              style: titles,
            )),
            DataCell(Text('45', style: titles)),
            DataCell(Text('Red', style: titles)),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('Hussain', style: titles)),
            DataCell(Text(
              '90',
              style: titles,
            )),
            DataCell(Text(
              'Yellow',
              style: titles,
            )),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('Naruto', style: titles)),
            DataCell(Text('11', style: titles)),
            DataCell(Text('Pink', style: titles)),
          ],
        ),
      ],
    );
  }
}
