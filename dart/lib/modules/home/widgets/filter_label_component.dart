import 'package:chuva_dart/modules/home/controllers/home.dart';
import 'package:flutter/material.dart';

class LabelTopWidget extends StatelessWidget {
  final HomeController eventStore;

  const LabelTopWidget({
    super.key,
    required this.eventStore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: const Color(0xFF2f6abd),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              const String selectedValue = "";
              eventStore.updateSelectedValue(selectedValue);
              eventStore.loadData();
            },
            child: Container(
              height: 50,
              width: 60,
              color: Colors.white,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Nov",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "2023",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              const String selectedValue = "26";
              eventStore.updateSelectedValue(selectedValue);
              eventStore.loadData();
            },
            child: Column(
              children: [
                SizedBox(
                  height: 49,
                  width: 45,
                  child: Center(
                    child: Text(
                      "26",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: eventStore.selectedValue == "26"
                            ? Colors.white
                            : Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
                eventStore.selectedValue == "26"
                    ? Container(
                        height: 1,
                        width: 45,
                        color: Colors.black,
                      )
                    : Container(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              const String selectedValue = "27";
              eventStore.updateSelectedValue(selectedValue);
              eventStore.loadData();
            },
            child: Column(
              children: [
                SizedBox(
                  height: 49,
                  width: 45,
                  child: Center(
                    child: Text(
                      "27",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: eventStore.selectedValue == "27"
                            ? Colors.white
                            : Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
                eventStore.selectedValue == "27"
                    ? Container(
                        height: 1,
                        width: 45,
                        color: Colors.black,
                      )
                    : Container(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              const String selectedValue = "28";
              eventStore.updateSelectedValue(selectedValue);
              eventStore.loadData();
            },
            child: Column(
              children: [
                SizedBox(
                  height: 49,
                  width: 45,
                  child: Center(
                    child: Text(
                      "28",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: eventStore.selectedValue == "28"
                            ? Colors.white
                            : Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
                eventStore.selectedValue == "28"
                    ? Container(
                        height: 1,
                        width: 45,
                        color: Colors.black,
                      )
                    : Container(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              const String selectedValue = "29";
              eventStore.updateSelectedValue(selectedValue);
              eventStore.loadData();
            },
            child: Column(
              children: [
                SizedBox(
                  height: 49,
                  width: 45,
                  child: Center(
                    child: Text(
                      "29",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: eventStore.selectedValue == "29"
                            ? Colors.white
                            : Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
                eventStore.selectedValue == "29"
                    ? Container(
                        height: 1,
                        width: 45,
                        color: Colors.black,
                      )
                    : Container(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              const String selectedValue = "30";
              eventStore.updateSelectedValue(selectedValue);
              eventStore.loadData();
            },
            child: Column(
              children: [
                SizedBox(
                  height: 49,
                  width: 45,
                  child: Center(
                    child: Text(
                      "30",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: eventStore.selectedValue == "30"
                            ? Colors.white
                            : Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
                eventStore.selectedValue == "30"
                    ? Container(
                        height: 1,
                        width: 45,
                        color: Colors.black,
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
