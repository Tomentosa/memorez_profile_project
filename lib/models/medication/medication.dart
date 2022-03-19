import 'package:flutter/cupertino.dart';

class Medication {
  final String medicationName;
  final String prescribingPhysician;
  final String pharmacy;
  final String address;
  final String phone;
  final String dosage;
  final String prescriptionLength;

  Medication(
      {required this.medicationName,
      required this.prescribingPhysician,
      required this.pharmacy,
      required this.address,
      required this.phone,
      required this.dosage,
      required this.prescriptionLength});
}
