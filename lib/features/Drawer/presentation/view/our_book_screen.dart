import 'package:bookly_app/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class OurBookScreen extends StatelessWidget {
  const OurBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //  color: Colors.yellow,
      //height:500,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                //fit : StackFit.passthrough,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    //padding: const EdgeInsets.only(bottom: 0),
                    height: 400,
                    width: 450,
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: const BorderRadius.only(
                          bottomLeft: (Radius.circular(120)),
                          bottomRight: Radius.circular(120)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80.0),
                          child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Image.asset(
                                //   'assets/images/rightimage.png',
                                // ),
                                const SizedBox(
                                  width: 50,
                                ),
                                const Center(
                                    child: CustomText(
                                  text: 'Our Books',
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.w300,
                                  size: 26,
                                )),

                                const Spacer(),
                                Image.asset('assets/images/leftimage.png'),
                              ]),
                        ),
                        Container(
                          height: 180,
                          width: 341,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[400]!, blurRadius: 30),
                            ],
                          ),
                          padding: const EdgeInsets.only(left: 5, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/im_two.jpg',
                                //width: 122,
                              ),
                              const SizedBox(width: 2),
                              Image.asset(
                                'assets/images/im.jpg',
                                //width: 100,
                              ),
                              const SizedBox(width: 2),
                              Image.asset(
                                'assets/images/im_three.jpg',
                                width: 110,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: SizedBox(
                width: 342,
                height: 722,
                child: CustomText(
                  heigtText: 2.0,
                  text:
                      'The Book Grocer online offers a broad and ever increasing range of discounted remainder and secondhand books.\n Our specialty is sourcing discounted books of amazing quality and passing on to our customers the best possible price. We take our book buying very seriously indeed.\n We scour the globe and the best publishers and suppliers for the best bargains, but no book simply arrives in our warehouse simply because it\'s cheap. \n It has to be something we want to read ourselves and would reccomend to others.\n We like to be known as the business which sells discounted books yet looks and feels like a retail bookstore.\n We are an Australian, family-owned business. We have been buying and selling books since 2000, when the first Castlebooks store opened in Kingston, ACT. \nIn 2007 we opened the first Book Grocer in Brunswick, Victoria. Book Grocers can now be found in a range of locations across Victoria, NSW, and of course, Canberra.\n Our staff also love reading and recommending books to others and we are proud of the role they play in demonstrating to our customers how good discount books can be',
                  size: 15,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.center,

                  color: Colors.grey[500],
                  //Color.fromRGBO(30,30,30,0.75 )
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
