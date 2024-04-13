import 'package:calme/models/slide_model.dart';
import 'package:calme/theme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';


class slideView extends StatefulWidget {
  const slideView({super.key});

  @override
  State<slideView> createState() => _slideViewState();
}

class _slideViewState extends State<slideView> {
  final controller = slideList;
  late PageController pageController;

  bool pageAkhir = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();

  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 150,
        padding: const EdgeInsets.fromLTRB(21, 0, 26, 48),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: pageController,
              count: slideList.length,
              onDotClicked: (index) =>
                  pageController.animateToPage(index, duration: Duration(milliseconds: 600),
                      curve: Curves.easeIn),
              effect: WormEffect(
                dotColor: customGrey,
                activeDotColor: primaryblue,
                dotHeight: 8,
                dotWidth: 32
              ),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () => pageController.previousPage(
                            duration: Duration(milliseconds: 350),
                            curve: Curves.easeIn),
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)
                                )
                            ),
                        ),
                        child: Padding(
                            padding: EdgeInsets.symmetric( vertical:  15),
                        child: Text(
                          pageAkhir ? 'Registrasi' : 'Lewati',
                          style: buttonSecondary,
                        ),
                        ))),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: FilledButton(
                      onPressed: () => pageController.nextPage(
                          duration: Duration(milliseconds: 350),
                          curve: Curves.easeIn),
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                            )
                        ),
                        backgroundColor:
                          MaterialStatePropertyAll(primaryblue)
                      ),
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            pageAkhir? 'Login' : 'Lanjut',
                            style: buttonPrimary,
                          ),
                      ),

                    ))
              ],
            )
          ],

        ),

      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(26, 48, 26, 209),
        child: PageView.builder(
            controller: pageController,
            onPageChanged: (index) => setState(() {
              pageAkhir = slideList.length - 1 == index;

              },
            ),
            itemCount: slideList.length,
            itemBuilder: (_, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [SvgPicture.asset('assets/logogram.svg')],
                  ),
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [SvgPicture.asset(slideList[index].image)],
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                          slideList[index].title,
                          style: Besar,
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          slideList[index].deskripsi,
                          style: normal,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              );
            },),
      ),
    );
  }
}
