import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width * 0.3;
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 120.0),
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.45,
                child: LayoutBuilder(
                  builder: (context, constraints) => Stack(
                    children: [
                      Image.asset(
                        "images/contact.png",
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                        color: Colors.grey,
                        colorBlendMode: BlendMode.saturation,
                        width: constraints.maxWidth * 0.6,
                        height: constraints.maxHeight,
                      ),
                      Container(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Colors.grey.withOpacity(1),
                              Colors.grey.withOpacity(0.5),
                            ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 140.0),
                              child: Text(
                                "Contact us",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 40),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ShaderMask(
                      //   shaderCallback: (bounds) {
                      //     return LinearGradient(
                      //             colors: [
                      //           Colors.grey,
                      //           Colors.grey,
                      //           Colors.grey,
                      //           Colors.grey.withOpacity(0.5),
                      //           Colors.grey.withOpacity(0.3),
                      //         ],
                      //             stops: [
                      //           0.0,
                      //           0.35,
                      //           0.4,
                      //           0.65,
                      //           1.0
                      //         ],
                      //             begin: Alignment.centerRight,
                      //             end: Alignment.centerLeft)
                      //         .createShader(Rect.fromLTRB(0, 0,
                      //             constraints.maxWidth, constraints.minHeight));
                      //   },
                      //   blendMode: BlendMode.darken,
                      //   child:
                      // ),
                    ],
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: _width,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Let's talk with us",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                              "Questions, comments, or suggestions? Simply fill in the form and we'll be in touch shortly."),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 9.0),
                                child: Icon(
                                  FontAwesomeIcons.locationDot,
                                  color: Colors.black,
                                ),
                              ),
                              Text("Carrera 32 #22-08, Santa Marta, Magdalena")
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 9.0),
                                child: Icon(
                                  FontAwesomeIcons.phoneVolume,
                                  color: Colors.black,
                                ),
                              ),
                              Text("+57 301 6836593")
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 9.0),
                                child: Icon(
                                  FontAwesomeIcons.envelope,
                                  color: Colors.black,
                                ),
                              ),
                              Text("gsanchez@unimagdalena.edu.co")
                            ],
                          ),
                        )
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        // color: Color(0xEEEEEEFF),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x7e7979).withOpacity(1),
                            offset: Offset(0, 0),
                            blurRadius: 13,
                            spreadRadius: -2,
                          )
                        ]),
                    width: _width,
                    child: Form(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.only(bottom: 6, right: 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.117,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      label: Text("Nombre"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 6),
                                  width:
                                      MediaQuery.of(context).size.width * 0.12,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      label: Text("Apellido"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  label: Text("Email"),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  label: Text("Phone Number"),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  label: Text("Your message"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: FilledButton(
                                  onPressed: () {},
                                  child: Text("Send Message"),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.blueAccent))),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
    // return Container(
    //   padding: EdgeInsets.only(bottom: 90),
    //   width: MediaQuery.of(context).size.width,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Row(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Container(
    //             width: MediaQuery.of(context).size.width * 0.3,
    //             child: const Column(
    //               children: [
    //                 Text("Let's talk with us"),
    //                 Text(
    //                     "Questions, comments, or suggestions? Simply fill in the form and we'll be in touch shortly."),
    //                 Row(
    //                   children: [
    //                     Icon(
    //                       FontAwesomeIcons.locationDot,
    //                       color: Colors.white,
    //                     ),
    //                     Text("Carrera 32 #22-08, Santa Marta, Magdalena")
    //                   ],
    //                 ),
    //                 Row(
    //                   children: [
    //                     Icon(
    //                       FontAwesomeIcons.phoneVolume,
    //                       color: Colors.white,
    //                     ),
    //                     Text("+57 301 6836593")
    //                   ],
    //                 ),
    //                 Row(
    //                   children: [
    //                     Icon(
    //                       FontAwesomeIcons.envelope,
    //                       color: Colors.white,
    //                     ),
    //                     Text("gsanchez@unimagdalena.edu.co")
    //                   ],
    //                 )
    //               ],
    //             ),
    //           ),
    //           Container(
    //               width: MediaQuery.of(context).size.width * 0.3,
    //               decoration:
    //                   BoxDecoration(borderRadius: BorderRadius.circular(20)),
    //               child: Form(
    //                 child: Column(
    //                   children: [
    //                     Row(
    //                       children: [
    //                         SizedBox(
    //                           width: MediaQuery.of(context).size.width * 0.1,
    //                           child: TextFormField(
    //                             decoration: InputDecoration(
    //                               label: Text("Nombre"),
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: MediaQuery.of(context).size.width * 0.1,
    //                           child: TextFormField(
    //                             decoration: InputDecoration(
    //                               label: Text("Apellido"),
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     TextFormField(
    //                       decoration: InputDecoration(
    //                         label: Text("Email"),
    //                       ),
    //                     ),
    //                     TextFormField(
    //                       decoration: InputDecoration(
    //                         label: Text("Phone Number"),
    //                       ),
    //                     ),
    //                     TextFormField(
    //                       decoration: InputDecoration(
    //                         label: Text("Your message"),
    //                       ),
    //                     ),
    //                     FilledButton(
    //                         onPressed: () {}, child: Text("Send Message"))
    //                   ],
    //                 ),
    //               ))
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
