import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 250,
            width: 250,
            transform: Matrix4.rotationZ(.1),
            margin: const EdgeInsets.only(left: 15),
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/13209495/pexels-photo-13209495.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  fit: BoxFit.fill),
              // color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              // border: Border.all(
              //   color: Colors.white,
              //   width: 1,
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 20,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: centerText('Beautiful'),
          ),
        ),
      ],
    );
  }

  Widget centerText(String arug) {
    return Text(
      arug,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white, fontSize: 17),
    );
  }
}
