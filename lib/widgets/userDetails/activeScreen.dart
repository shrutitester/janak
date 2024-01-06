import 'package:flutter/material.dart';

import '../../constants/colorConstants.dart';
import '../../constants/stringConstants.dart';

class ActiveScreen extends StatefulWidget {
  const ActiveScreen({super.key});

  @override
  State<ActiveScreen> createState() => _ActiveScreenState();
}

class _ActiveScreenState extends State<ActiveScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFFF8F8F8),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 35,
                decoration: BoxDecoration(
                  color: ColorConstants.primaryColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(StringConstants.names, style: TextStyle(color: ColorConstants.mainBgColor),),
                    Text(StringConstants.type, style: TextStyle(color: ColorConstants.mainBgColor)),
                    Text(StringConstants.phone, style: TextStyle(color: ColorConstants.mainBgColor)),
                    Text(StringConstants.status, style: TextStyle(color: ColorConstants.mainBgColor)),
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFDFDFDF), width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('ABHAY'),
                                Text('2'),
                                Text('7053541818'),
                                Text('InActive'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
