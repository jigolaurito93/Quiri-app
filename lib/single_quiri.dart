import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingleQuiri extends StatefulWidget {
  const SingleQuiri({super.key});

  @override
  State<SingleQuiri> createState() => _SingleQuiriState();
}

class _SingleQuiriState extends State<SingleQuiri> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 5),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 18, 18, 18),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('KYLE'),
                      Image.asset('assets/images/profile_1.png')
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Does social media help or harm mental health?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'But the constant comparison and bullying on social media contributes to harming mental health',
                    style: TextStyle(
                        color: Color.fromRGBO(157, 157, 157, 1), fontSize: 15),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "2",
                              style: TextStyle(
                                color: Color.fromRGBO(157, 157, 157, 1),
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.mail,
                              color: Color.fromRGBO(255, 149, 104, 1),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Now',
                            style: TextStyle(
                                color: Color.fromRGBO(157, 157, 157, 1)),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.access_time_filled_sharp,
                            color: Color.fromRGBO(157, 157, 157, 1),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
