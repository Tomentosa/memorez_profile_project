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
          height: 130,
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
                            child: Text(
                              'Medication: ${medications[index].medicationName}\n Physician: ${medications[index].prescribingPhysician}\n Pharmacy: ${medications[index].pharmacy}\n Address: ${medications[index].address}\n Phone: ${medications[index].phone}\n Dosage: ${medications[index].dosage}\n Prescription Length: ${medications[index].prescriptionLength}',
                              style: TextStyle(fontSize: 11),
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
