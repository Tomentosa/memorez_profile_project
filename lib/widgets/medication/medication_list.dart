import 'package:flutter/material.dart';

import '../../models/medication/medication.dart';

class MedicationList extends StatefulWidget {
  final List<Medication> medications;
  final Function deleteMx;

  MedicationList(this.medications, this.deleteMx);

  @override
  State<MedicationList> createState() => _MedicationListState();
}

String medicationNameInput = '';
String prescribingPhysicianInput = '';

class _MedicationListState extends State<MedicationList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: widget.medications.isEmpty
          ? Row(
              children: const <Widget>[
                Text(
                  'No medications added.',
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return const Card(
                  elevation: 10,
                  margin: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: ListTile(
                      leading: CircleAvatar(
                    radius: 30,
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: FittedBox(
                        child: Text('{enteredMedicationName}'),
                      ),
                    ),
                  )),
                );
              },
              itemCount: widget.medications.length,
            ),
    );
  }
}
