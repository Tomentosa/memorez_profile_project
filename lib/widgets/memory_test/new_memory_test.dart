import 'package:flutter/material.dart';
//import 'package:memorez_profile_resources/widgets/memory_test/memory_test_list.dart';

class NewMemoryTest extends StatefulWidget {
  final Function addMemTest;

  NewMemoryTest(this.addMemTest);

  @override
  _NewMemoryTestState createState() => _NewMemoryTestState();
}

class _NewMemoryTestState extends State<NewMemoryTest> {
  final _memoryTestNameController = TextEditingController();
  final _memoryTestUrlController = TextEditingController();

  void _submitData() {
    if (_memoryTestNameController.text.isEmpty) {
      return;
    }
    final enteredMemoryTestName = _memoryTestNameController.text;
    final enteredMemoryTestUrl = _memoryTestUrlController.text;

    if (enteredMemoryTestName.isEmpty) {
      return;
    }

    widget.addMemTest(
      enteredMemoryTestName,
      enteredMemoryTestUrl,
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
            decoration: InputDecoration(labelText: 'Memory Test:'),
            controller: _memoryTestNameController,
            onSubmitted: (_) => _submitData(),
//            onChanged: (val) => memoryTestNameInput,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Memory Test Internet URL:'),
            controller: _memoryTestUrlController,
            onSubmitted: (_) => _submitData(),
//            onChanged: (val) => memoryTestUrlInput,
          ),
          TextButton(
            child: Text('Save'),
            style: TextButton.styleFrom(
              primary: Colors.purple,
            ),
            onPressed: _submitData,
          ),
        ],
      ),
    );
  }
}
