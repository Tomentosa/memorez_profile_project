import 'package:flutter/material.dart';

import '../../models/memory_test/memory_test.dart';

class MemoryTestList extends StatefulWidget {
  final List<MemoryTest> memoryTests;
  final Function deleteMemx;

  MemoryTestList(this.memoryTests, this.deleteMemx);

  @override
  State<MemoryTestList> createState() => _MemoryTestListState();
}

String memoryTestNameInput = '';
String memoryTestUrlInput = '';

class _MemoryTestListState extends State<MemoryTestList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: widget.memoryTests.isEmpty
          ? Row(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 280,
                    height: 140,
                    child: Card(
                      elevation: 15,
                      child: Center(
                        child: Text(
                          'No memory tests added.',
                        ),
                      ),
                    ),
                  ),
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
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: FittedBox(
                      child:
                          Text('Memory Test: {memoryTestNameController.text}'),
                    ),
                  ),
                );
              },
              itemCount: widget.memoryTests.length,
            ),
    );
  }
}
