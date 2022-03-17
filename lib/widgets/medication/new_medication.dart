import 'package:flutter/material.dart';
//import 'package:memorez_profile_resources/widgets/medication/medication_list.dart';

class NewMedication extends StatefulWidget {
  final Function addMed;

  NewMedication(this.addMed);

  @override
  _NewMedicationState createState() => _NewMedicationState();
}

class _NewMedicationState extends State<NewMedication> {
  final _medicationNameController = TextEditingController();

  final _prescribingPhysicianController = TextEditingController();

  final _pharmacyController = TextEditingController();

  final _addressController = TextEditingController();

  final _phoneController = TextEditingController();

  final _dosageController = TextEditingController();

  final _prescriptionEndController = TextEditingController();

  void _submitData() {
    if (_medicationNameController.text.isEmpty) {
      return;
    } else {
      // to do
    }
    ;
    final enteredMedicationName = _medicationNameController.text;
    //   print('xxxxxxxxxxxxxxx${_medicationNameController.text}');
    final enteredPrescribingPhysician = _prescribingPhysicianController.text;
    //   print('xxxxxxxxxxxxxxx${_prescribingPhysicianController.text}');
    final enteredPharmacy = _pharmacyController.text;
    final enteredAddress = _addressController.text;
    final enteredPhone = _phoneController.text;
    final enteredDosage = _dosageController.text;
    final enteredPrescriptionEnd = _prescriptionEndController.text;

    //  if (enteredMedicationName.isEmpty) {
    //    return;
    //  }

    widget.addMed(
      enteredMedicationName,
      enteredPrescribingPhysician,
      enteredPharmacy,
      enteredAddress,
      enteredPhone,
      enteredDosage,
      enteredPrescriptionEnd,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Medication:'),
            controller: _medicationNameController,
            onSubmitted: (_) => _submitData(),
//            onChanged: (val) => medicationNameInput,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Physician:'),
            controller: _prescribingPhysicianController,
            onSubmitted: (_) => _submitData(),
//            onChanged: (val) => prescribingPhysicianInput,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Pharmacy:'),
            controller: _pharmacyController,
            onSubmitted: (_) => _submitData(),
            //      onChanged: (val) => pharmacyInput,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Address:'),
            controller: _addressController,
            onSubmitted: (_) => _submitData(),
            //      onChanged: (val) => addressInput,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Phone:'),
            controller: _phoneController,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => _submitData(),
            //      onChanged: (val) => phoneInput,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Dosage:'),
            controller: _dosageController,
            onSubmitted: (_) => _submitData(),
            //      onChanged: (val) => dosageInput,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Prescription End Date:'),
            controller: _prescriptionEndController,
            onSubmitted: (_) => _submitData(),
            //      onChanged: (val) => prescriptionEndInput,
          ),
          TextButton(
            child: Text('Save'),
            style: TextButton.styleFrom(
              primary: Colors.purple,
            ),
            onPressed: _submitData,
//                  widget.addMed(
//                      _medicationNameController.text,
//                      _prescribingPhysicianController.text,
//                      _pharmacyController.text,
//                      _addressController.text,
//                      _dosageController.text,
//                      _prescriptionEndController.text);
//                },
          ),
        ],
      ),
    );
  }
}
