import 'package:flutter/material.dart';

import '../../constants/colorConstants.dart';
import '../../utils/lotsOfThemes.dart';

class BookingListItem extends StatefulWidget {
  const BookingListItem({super.key});

  @override
  State<BookingListItem> createState() => _BookingListItemState();
}

class _BookingListItemState extends State<BookingListItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Text(
                                "Design :",
                                style: LotOfThemes.txt14DarkSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(1.0),
                            //   child: Text(
                            //     widget.design.designName!,
                            //     style: LotOfThemes.txt14Light,
                            //     overflow: TextOverflow.ellipsis,
                            //   ),
                            // ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Text(
                                "Size  : ",
                                style: LotOfThemes.txt14DarkSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(1.0),
                            //   child: Text(
                            //     widget.design.sizeName!,
                            //     style: LotOfThemes.txt14Light,
                            //     overflow: TextOverflow.ellipsis,
                            //   ),
                            // )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Text(
                                "Color : ",
                                style: LotOfThemes.txt14DarkSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(1.0),
                            //   child: Text(
                            //     widget.design.colourName!,
                            //     style: LotOfThemes.txt14Light,
                            //     overflow: TextOverflow.ellipsis,
                            //   ),
                            // )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                8.0), // <= No more error here :)
                            color: ColorConstants.primaryColor,
                          ),
                          padding: const EdgeInsets.all(1.0),
                          child: IconButton(
                              color: Colors.white,
                              onPressed: () {
                              },
                              icon: const Icon(Icons.edit)),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                8.0), // <= No more error here :)
                            color: ColorConstants.primaryColor,
                          ),
                          padding: const EdgeInsets.all(1.0),
                          child: IconButton(
                              color: Colors.white,
                              onPressed: () {
                              },
                              icon: const Icon(Icons.delete_outline)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Divider(
                height: 1.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            "Rate :",
                            style: LotOfThemes.textHeading14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(1.0),
                        //   child: Text(
                        //     "₹ ${widget.design.rate!}",
                        //     style: LotOfThemes.text16HeadingRed,
                        //     overflow: TextOverflow.ellipsis,
                        //   ),
                        // ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            "Qty :",
                            style: LotOfThemes.textHeading14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(1.0),
                        //   child: Text(
                        //     widget.design.qty!,
                        //     style: LotOfThemes.text16HeadingRed,
                        //     overflow: TextOverflow.ellipsis,
                        //   ),
                        // ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            "Amt :",
                            style: LotOfThemes.textHeading14,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(1.0),
                        //   child: Text(
                        //     widget.design.amount!,
                        //     style: LotOfThemes.text16HeadingRed,
                        //     overflow: TextOverflow.ellipsis,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

