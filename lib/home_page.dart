import 'package:flutter/material.dart';

class HomeQuiri extends StatefulWidget {
  const HomeQuiri({super.key});

  @override
  State<HomeQuiri> createState() => _HomeQuiriState();
}

class _HomeQuiriState extends State<HomeQuiri> {
  late List<bool> isSelected;
  @override
  void initState() {
    super.initState();
    isSelected = [true, false];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Quiris",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: ToggleButtons(
            renderBorder: false,
            fillColor: const Color.fromRGBO(0, 0, 0, 0),
            onPressed: (int index) {
              setState(() {
                isSelected[index] = !isSelected[index];
                isSelected[1 - index] = !isSelected[index];
              });
            },
            isSelected: isSelected,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: isSelected[0]
                            ? const Color.fromRGBO(255, 149, 104, 1)
                            : const Color.fromRGBO(0, 0, 0, 0),
                        width: 3.5),
                  ),
                ),
                child: const Text(
                  'Active',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: isSelected[1]
                            ? const Color.fromRGBO(255, 149, 104, 1)
                            : const Color.fromRGBO(0, 0, 0, 0),
                        width: 3.5),
                  ),
                ),
                child: const Text(
                  'Idle',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(
          0,
          0,
          0,
          0,
        ),
        onPressed: () {},
        shape: const CircleBorder(),
        child: Image.asset(
          "assets/icons/quiri_button.png",
          cacheHeight: 80,
        ),
      ),
    );
  }
}
