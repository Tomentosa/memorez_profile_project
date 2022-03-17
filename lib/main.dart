import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/medication/new_medication.dart';
import 'widgets/medication/medication_list.dart';
import 'models/medication/medication.dart';
import 'widgets/memory_test/new_memory_test.dart';
import 'widgets/memory_test/memory_test_list.dart';
import './models/memory_test/memory_test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemorEZ Resources',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//void startAddNewMedication(BuildContext ctx) {
//  showModalBottomSheet(context: ctx, builder: (_) {
//    return NewMedication()
//  },);
//}

class _MyHomePageState extends State<MyHomePage> {
//******************************************************
  final List<Medication> _userMedications = [];

  void _addNewMedication(
      String mxMedicationName,
      String mxPrescribingPhysician,
      String mxPharmacy,
      String mxAddress,
      String mxPhone,
      String mxDosage,
      String mxPrescriptionEnd) {
    final newMx = Medication(
      medicationName: mxMedicationName,
      prescribingPhysician: mxPrescribingPhysician,
      pharmacy: mxPharmacy,
      address: mxAddress,
      phone: mxPhone,
      dosage: mxDosage,
      prescriptionEnd: mxPrescriptionEnd,
    );

    setState(() {
      _userMedications.add(newMx);
    });
  }

//************************************************************
  final List<MemoryTest> _userMemoryTests = [];

  void _addNewMemoryTest(
    String mxMemoryTestName,
    String mxMemoryTestUrl,
  ) {
    final newMemx = MemoryTest(
      memoryTestName: mxMemoryTestName,
      memoryTestUrl: mxMemoryTestUrl,
    );

    setState(() {
      _userMemoryTests.add(newMemx);
    });
  }

//******************************************************************
// start AddNewMedication
  //******************************************
  void _startAddNewMedication(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewMedication(_addNewMedication),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

//******************************************************************
// start AddNewMemoryTest
  //******************************************
  void _startAddNewMemoryTest(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewMemoryTest(_addNewMemoryTest),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  //****************************
  //delete medication
  //****************************
  void _deleteMedication(String medicationName) {
    setState(() {
      _userMedications.removeWhere((mx) => mx.medicationName == medicationName);
      ;
    });
  }

  //****************************
  //delete memory test
  //****************************
  void _deleteMemoryTest(String memoryTestName) {
    setState(() {
      _userMemoryTests.removeWhere((mx) => mx.memoryTestName == memoryTestName);
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('MemorEZ Resources'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: 50,
            child: Card(
              color: Colors.blue,
              elevation: 15,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Medication',
//                      style: TextStyle(color: Colors.white, ),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.add),
                      foregroundColor: Colors.black,
                      tooltip: 'Add New Medication',
                      onPressed: () => _startAddNewMedication(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 100,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MedicationList(_userMedications, _deleteMedication),
              ],
            ),
          ),
//
//          UserMedication()
          //**********************************************
          // memory test
          //********************************************
          Container(
            height: 50,
            child: Card(
              color: Colors.blue,
              elevation: 15,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Memory Test',
//                      style: TextStyle(color: Colors.white, ),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.add),
                      foregroundColor: Colors.black,
                      tooltip: 'Add Memory Test',
                      onPressed: () => _startAddNewMemoryTest(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 50,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MemoryTestList(_userMemoryTests, _deleteMemoryTest),
              ],
            ),
          ),
          //********************************************
          // Transportation
          //*******************************************
          Container(
            height: 50,
            child: Card(
              color: Colors.blue,
              elevation: 15,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transportation',
//                      style: TextStyle(color: Colors.white, ),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.add),
                      foregroundColor: Colors.black,
                      tooltip: 'Add Transportation',
                      //*****************************************************
                      // add transportation here
                      //*****************************************************
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 100,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                //********************************************************
                MedicationList(_userMedications, _deleteMedication),
                //*******************************************************
              ],
            ),
          ),
          //********************************************
          // other resources
          //***********************************************
          Container(
            height: 50,
            child: Card(
              color: Colors.blue,
              elevation: 15,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Other Resources',
//                      style: TextStyle(color: Colors.white, ),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.add),
                      foregroundColor: Colors.black,
                      tooltip: 'Add Other Resources',
                      //*****************************************************
                      // add transportation here
                      //*****************************************************
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 100,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                //********************************************************
                MedicationList(_userMedications, _deleteMedication),
                //*******************************************************
              ],
            ),
          ),
        ],
      ),
    );
  }
}
