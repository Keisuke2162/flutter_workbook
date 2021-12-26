import 'package:flutter/material.dart';

// １：ROWとCOLUMN(難易度D)

class RowColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson1"),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                  child: Center(
                    child: Text("Main"),
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Column (
                  children: [
                    Container(
                      height: 50,
                      color: Colors.redAccent,
                      child: Center(
                        child: Text("A"),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.lightBlue,
                        child: Center(
                          child: Text("B"),
                        ),
                      ),
                    ),

                    Container(
                      height: 50,
                      color: Colors.green,
                      child: Center(
                        child: Text("C"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
