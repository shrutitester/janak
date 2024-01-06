import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

import 'model/product.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key});

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  Product? product;
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(
                    product?.images.length ?? 0,
                        (index) => SmallProductImage(
                          isSelected: index == selectedImage,
                          press: (){
                            setState(() {
                              selectedImage = index;
                            });
                          },
                          image: product?.images[index] ?? '',
                        ))
              ],
            ),
          ),
          Expanded(
            flex: 7,
              child: SizedBox(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(product?.images[selectedImage] ?? ''),
                ),
              ))
        ],
      ),
    );
  }
}

class SmallProductImage extends StatefulWidget {
  const SmallProductImage(
      {super.key,
        required this.isSelected,
        required this.press,
        required this.image});

  final bool isSelected;
  final VoidCallback press;
  final String image;

  @override
  State<SmallProductImage> createState() => _SmallProductImageState();
}

class _SmallProductImageState extends State<SmallProductImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(8),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.grey),
        ),
        child: Image.asset(widget.image),
      ),
    );
  }
}
