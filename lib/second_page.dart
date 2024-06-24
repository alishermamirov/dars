import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 260,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "465465465",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Add Number",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 50),
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 24),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: ShapeDecoration(
                      color: Colors.grey.shade300,
                      shape: const CircleBorder(),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const ShapeDecoration(
                        color: Colors.transparent,
                        shape: CircleBorder(),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: ShapeDecoration(
                        color: Colors.green.shade300,
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: ShapeDecoration(
                        color: Colors.grey.shade300,
                        shape: const CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_double_arrow_left_rounded,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
