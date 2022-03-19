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

  final _prescriptionLengthController = TextEditingController();

  void _submitData() {
    if (_medicationNameController.text.isEmpty) {
      return;
    } else {
      // todo
    }

    final enteredMedicationName = _medicationNameController.text;
//    print('xxxxxxxxxxxxxxx${_medicationNameController.text}');
//    print('TTTTTTTTTTTTTTTTTTT${_medicationNameController.text}');
    final enteredPrescribingPhysician = _prescribingPhysicianController.text;
    //   print('xxxxxxxxxxxxxxx${_prescribingPhysicianController.text}');
    final enteredPharmacy = _pharmacyController.text;
    final enteredAddress = _addressController.text;
    final enteredPhone = _phoneController.text;
    final enteredDosage = _dosageController.text;
    final enteredPrescriptionLength = _prescriptionLengthController.text;

    //if (enteredMedicationName.isEmpty) {
    //  return;
    //}

    widget.addMed(
      enteredMedicationName,
      enteredPrescribingPhysician,
      enteredPharmacy,
      enteredAddress,
      enteredPhone,
      enteredDosage,
      enteredPrescriptionLength,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Medication',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              controller: _medicationNameController,
              onSubmitted: (_) => _submitData(),
//            onChanged: (val) => medicationNameInput,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Physician',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              controller: _prescribingPhysicianController,
              onSubmitted: (_) => _submitData(),
//            onChanged: (val) => prescribingPhysicianInput,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Pharmacy',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              controller: _pharmacyController,
              onSubmitted: (_) => _submitData(),
              //      onChanged: (val) => pharmacyInput,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Address',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              controller: _addressController,
              onSubmitted: (_) => _submitData(),
              //      onChanged: (val) => addressInput,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Phone',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              controller: _phoneController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _submitData(),
              //      onChanged: (val) => phoneInput,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Dosage',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              controller: _dosageController,
              onSubmitted: (_) => _submitData(),
              //      onChanged: (val) => dosageInput,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Prescription Length',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              controller: _prescriptionLengthController,
              onSubmitted: (_) => _submitData(),
              //      onChanged: (val) => prescriptionLengthInput,
            ),
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
//                      _prescriptionLengthController.text);
//                },
          ),
        ],
      ),
    );
  }
}
