
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget activityButton(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.9,
    child: Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: const BorderSide(color: Colors.black)),
      child: Column(
        children: [
          const FittedBox(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Oops.. end of the list for thi selection criteria",
              overflow: TextOverflow.ellipsis,
            ),
          )),
          const FittedBox(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "You can host an activity & we'll shout-out to the cammunity to join in :)",
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: CupertinoButton(
                  color: Colors.green,
                  child: const Text("create Activity"),
                  onPressed: () {
                    // Navigator.pushNamed(context, "/");
                  }),
            ),
          )
        ],
      ),
    ),
  );
}
