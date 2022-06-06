import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'widgets/get_started_button.dart';

class GetStartPage extends StatefulWidget {
  const GetStartPage({Key? key}) : super(key: key);

  @override
  State<GetStartPage> createState() => _GetStartPageState();
}

class _GetStartPageState extends State<GetStartPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height / 100;
    final wt = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: ht * 60,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: ht * 0),
                  child: Container(
                    height: ht * 60,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Positioned(
                  top: ht * 15,
                  left: wt * 30,
                  child: SizedBox(
                    width: wt * 40,
                    height: wt * 50,
                    child: Image.asset(
                      Assets.assetsImagesSaveBill,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  bottom: ht * 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SizedBox(
                      width: wt * 80,
                      child: RichText(
                        text: TextSpan(
                            style: GoogleFonts.lobster(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: Colors.black),
                            ),
                            children: [
                              const TextSpan(
                                  text:
                                      "Make your life easy and stress-free with"),
                              TextSpan(
                                  text: " Save bill",
                                  style: GoogleFonts.lobster(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green),
                                  ))
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: ht * 10,
          ),
          const GetStartedButton()
        ],
      ),
    );
  }
}
