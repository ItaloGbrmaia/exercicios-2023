import 'package:flutter/material.dart';

class BottomAppBarr extends StatelessWidget {
  const BottomAppBarr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: Column(
        children: [
          SizedBox(
            width: 350,
            height: 45.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 40,
                        width: 46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: const Color(0xFF2f6abd),
                        ),
                        child: const Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                      child: Center(
                        child: Text(
                          "Exibindo todas as atividades",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
