import 'package:flutter/material.dart';

import '../../models/medication/medication.dart';

class MedicationList extends StatelessWidget {
//  String medicationNameInput = '';
//  String prescribingPhysicianInput = '';
//  String pharmacyInput = '';
//  String addressInput = '';
//  String phoneInput = '';
//  String dosageInput = '';
//  String prescriptionLengthInput = '';
  final List<Medication> medications;
  final Function deleteMx;

  MedicationList(this.medications, this.deleteMx);

  @override
//  State<MedicationList> createState() => _MedicationListState();
//}

//String medicationNameInput = '';
//String prescribingPhysicianInput = '';
//String pharmacyInput = '';
//String addressInput = '';
//String phoneInput = '';
//String dosageInput = '';
//String prescriptionLengthInput = '';

//class _MedicationListState extends State<MedicationList> {
//  get medications => ;

  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width ;
    return Row(
      children: [
        Container(
          height: 250,
          width: width,
          child: medications.isEmpty
              ? Center(
                  child: Container(
                    width: 280,
                    height: 140,
                    child: Card(
                      elevation: 15,
                      child: Center(
                        child: Text(
                          'No medications added.',
                        ),
                      ),
                    ),
                  ),
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
//                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return Container(
                      width: 280,
                      height: 120,
                      child: Card(
                        elevation: 15,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Medication: ${medications[index].medicationName}\n',
                                      style: TextStyle(fontSize: 11),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.edit,
                                        color: Colors.blue,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    )
                                  ],
                                ),
                                Text(
                                  'Physician: ${medications[index].prescribingPhysician}\n ',
                                  style: TextStyle(fontSize: 11),
                                ),
                                Text(
                                  'Pharmacy: ${medications[index].pharmacy}\n ',
                                  style: TextStyle(fontSize: 11),
                                ),
                                Text(
                                  'Address: ${medications[index].address}\n ',
                                  style: TextStyle(fontSize: 11),
                                ),
                                Text(
                                  'Phone: ${medications[index].phone}\n',
                                  style: TextStyle(fontSize: 11),
                                ),
                                Text(
                                  'Dosage: ${medications[index].dosage}\n',
                                  style: TextStyle(fontSize: 11),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Prescription Length: ${medications[index].prescriptionLength}',
                                      style: TextStyle(fontSize: 11),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.delete_forever,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
//                  child: Text('{medications[index].medicationName}'),
                  },
                  itemCount: medications.length,
                ),
        ),
      ],
    );
  }
}
