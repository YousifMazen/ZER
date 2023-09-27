import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import '/app/extensions.dart';
import '../color_manager.dart';
import '../values_manager.dart';
import 'buttons_widget.dart';

class CustomCarouselSlider extends StatelessWidget {
  CustomCarouselSlider({
    super.key,
  });

  final List<String> offerImgs = [
    'https://sarwaranpharmacy.com/wp-content/uploads/2020/06/sagh.jpg',
    'https://sarwaranpharmacy.com/wp-content/uploads/2019/05/regayhawler.jpg',
    'https://sarwaranpharmacy.com/wp-content/uploads/2020/06/sarwaranpharmacy.jpg',
    'https://sarwaranpharmacy.com/wp-content/uploads/2020/06/runakisarwaran.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = offerImgs
        .map((item) => ClipRRect(
            borderRadius:
                BorderRadius.all(Radius.circular(RadiusManager.small)),
            child: Stack(
              children: <Widget>[
                Container(color: ColorManager.black.withAlpha(10)),
                Image.network(
                  item,
                  fit: BoxFit.cover,
                  width: 1000.0,
                  // loadingBuilder: (context, child, loadingProgress) {
                  //  },
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'Sarwaran',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )))
        .toList();

    return Container(
      width: 95.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusManager.normal)),
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
          autoPlay: true,
        ),
        items: imageSliders,
      ),
    );
  }
}

class CarouselWithIndicatorAndPhotoView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState
    extends State<CarouselWithIndicatorAndPhotoView> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final navigateToPage = Navigator.of(context);
    return Builder(
      builder: (context) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                  height: 100.h,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: imgList
                  .map((item) => GestureDetector(
                        child: Container(
                            color: ColorManager.background,
                            child: Container(
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        useSafeArea: false,
                                        builder: (context) => Container(
                                              constraints:
                                                  BoxConstraints.expand(
                                                height: 100.h,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  PhotoView(
                                                    imageProvider:
                                                        NetworkImage(item),
                                                  ),
                                                  SafeArea(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(20.sp),
                                                      child: CustomButton
                                                          .circularIcon(
                                                              icon: Icons.close,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              foregroundColor:
                                                                  ColorManager
                                                                      .white,
                                                              onPressed: () {
                                                                navigateToPage;
                                                              }),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ));
                                  },
                                  child: Container(
                                    child: Image.network(
                                      item,
                                      height: 100.h,
                                      fit: BoxFit.cover,
                                      loadingBuilder: (_, child, chunk) =>
                                          chunk != null
                                              ? CircularProgressIndicator(
                                                  color: ColorManager.green,
                                                )
                                              : child,
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 15.sp, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
