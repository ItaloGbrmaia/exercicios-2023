import 'package:chuva_dart/shared/services/get_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Details extends StatefulWidget {
  const Details({
    Key? key,
  }) : super(key: key);
  // final EventData eventData;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // late List<EventData> events = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF456189),
        title: const Padding(
          padding: EdgeInsets.only(top: 6.0),
          child: Column(
            children: [
              Text(
                "Chuva 💜 flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () => {
            Modular.to.navigate('/'),
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        toolbarHeight: 70.0, // Aumenta a altura do AppBar
      ),
      body: Container(
        color: Colors.white,
        child: const Column(
          children: [],
        ),
      ),
    );
  }
}
