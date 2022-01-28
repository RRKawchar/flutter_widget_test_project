import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/widgets/appBar_and_text.dart';

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({Key? key}) : super(key: key);

  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table'),
      ),
      body: Center(
        child: DataTable(
          headingTextStyle: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              backgroundColor: Colors.lightGreen),
          showBottomBorder: true,
          dividerThickness: 50.0,
          columns: [
            DataColumn(label: Text("Name"), tooltip: "name"),
            DataColumn(label: Text("Age")),
            DataColumn(label: Text("Religion")),
            DataColumn(label: Text("Address")),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text("Riyazur Rohman Kawchar"),
                  showEditIcon: true, onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('No Eidited')),
                   
                );
                  }),
              DataCell(Text("22")),
              DataCell(Text("Islam")),
              DataCell(Text("Islam")),
            ]),
            DataRow(cells: [
              DataCell(Text("Md Delower")),
              DataCell(Text("19")),
              DataCell(Text("Islam")),
              DataCell(Icon(Icons.location_on_rounded)),
            ]),
            DataRow(cells: [
              DataCell(Text("Rifat Hossain")),
              DataCell(Text("22")),
              DataCell(Text("Islam")),
              DataCell(Icon(Icons.location_on_rounded)),
            ]),
            DataRow(cells: [
              DataCell(Text("Md Emon")),
              DataCell(Text("22")),
              DataCell(Text("Islam")),
              DataCell(Icon(Icons.location_on_rounded)),
            ]),
            DataRow(cells: [
              DataCell(Text("MD Amir Hossain")),
              DataCell(Text("25")),
              DataCell(Text("Islam")),
              DataCell(Icon(Icons.location_on_rounded)),
            ]),
            DataRow(cells: [
              DataCell(Text("MD Mizanur Rohman ")),
              DataCell(Text("21")),
              DataCell(Text("Islam")),
              DataCell(Icon(Icons.location_on_rounded)),
            ]),
            DataRow(cells: [
              DataCell(Text("MD Arman")),
              DataCell(Text("22")),
              DataCell(Text("Islam")),
              DataCell(Icon(Icons.location_on_rounded)),
            ]),
            DataRow(cells: [
              DataCell(Text("MD Asraf")),
              DataCell(Text("24")),
              DataCell(Text("Islam")),
              DataCell(Icon(Icons.location_on_rounded)),
            ]),
          ],
        ),
      ),
    );
  }
}
