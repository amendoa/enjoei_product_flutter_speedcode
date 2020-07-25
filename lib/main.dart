import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Page Enjoei',
      theme: ThemeData(
        fontFamily: 'Proxima Nova',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductPage(),
    );
  }
}

class EnjoeiColors {
  EnjoeiColors._();

  static const Color gray100 = Color(0xfff4f2f0);
  static const Color gray200 = Color(0xffedebe9);
  static const Color gray300 = Color(0xffcac5bf);
  static const Color gray400 = Color(0x80cac5bf);
  static const Color gray500 = Color(0xff7d7a77);
  static const Color gray600 = Color(0xff222222);

  static const Color white = Color(0xffffffff);

  static const Color primary100 = Color(0xfff16984);
  static const Color primary200 = Color(0xfff05b78);

  static const Color green = Color(0xff6fcf67);
  static const Color yellow = Color(0xffffc517);
  static const Color red = Color(0xffe85657);
}

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/icons/arrow-left.svg',
                height: 24,
                width: 24,
                color: EnjoeiColors.gray600,
              ),
              Text(
                'Regata marrom',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: EnjoeiColors.gray600,
                ),
              ),
              SvgPicture.asset(
                'assets/icons/share.svg',
                height: 24,
                width: 24,
                color: EnjoeiColors.gray600,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: EnjoeiColors.white,
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: EnjoeiColors.gray100,
            ),
          ),
        ),
      );

  @override
  Size get preferredSize => Size.fromHeight(58);
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/home.svg',
                      height: 24,
                      width: 24,
                      color: EnjoeiColors.gray600,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'home',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: EnjoeiColors.gray600,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/search.svg',
                      height: 24,
                      width: 24,
                      color: EnjoeiColors.primary100,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'busca',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: EnjoeiColors.primary100,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/pricetag.svg',
                      height: 24,
                      width: 24,
                      color: EnjoeiColors.gray600,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'vender',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: EnjoeiColors.gray600,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/inbox.svg',
                      height: 24,
                      width: 24,
                      color: EnjoeiColors.gray600,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'mensagens',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: EnjoeiColors.gray600,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset(
                        'assets/images/profiles/amendoa.jpg',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Text(
                      'amendoa',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: EnjoeiColors.gray600,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        height: 48,
        decoration: BoxDecoration(
          color: EnjoeiColors.white,
          border: Border(
            top: BorderSide(
              width: 1,
              color: EnjoeiColors.gray100,
            ),
          ),
        ),
      );
}

class ProductSliderDot extends StatelessWidget {
  final bool isActive;

  ProductSliderDot({
    @required this.isActive,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          left: 4.0,
          right: 4.0,
          bottom: 12,
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? EnjoeiColors.primary200 : EnjoeiColors.white,
          ),
          height: 8,
          width: 8,
        ),
      );
}

class SizeTag extends StatelessWidget {
  const SizeTag({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          padding: EdgeInsets.only(
            top: 5,
            bottom: 5,
            left: 8,
            right: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(3),
            ),
            color: EnjoeiColors.white,
          ),
          child: Text(
            'Tam P',
            style: TextStyle(
              color: EnjoeiColors.gray500,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class ProductSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  int currentItem = 0;

  var images = [
    {
      'id': 0,
      'src': 'assets/images/products/tanktop/1.jpg',
    },
    {
      'id': 1,
      'src': 'assets/images/products/tanktop/2.jpg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Container(
          child: PageView(
            children: images
                .map((item) => Image.asset(
                      item['src'],
                    ))
                .toList(),
            onPageChanged: (currentPage) {
              if (currentPage != currentItem) {
                setState(() {
                  currentItem = currentPage;
                });
              }
            },
          ),
          height: MediaQuery.of(context).size.width,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: SizeTag(),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images
                    .map((item) => ProductSliderDot(
                          isActive: item['id'] == currentItem,
                        ))
                    .toList(),
              ),
            ),
            Expanded(
              child: SizedBox(),
            )
          ],
        )
      ],
    );
  }
}

class ProductActions extends StatelessWidget {
  const ProductActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: EnjoeiColors.gray100,
          ),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/yeah.svg',
                      height: 24,
                      width: 24,
                      color: EnjoeiColors.gray600,
                    ),
                    Positioned(
                      top: -10,
                      right: -12,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 5,
                          right: 5,
                          top: 3,
                          bottom: 3,
                        ),
                        decoration: BoxDecoration(
                          color: EnjoeiColors.gray100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '45',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: EnjoeiColors.gray600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'yeah-yeahs',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: EnjoeiColors.gray600,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 1,
              height: 44,
              color: EnjoeiColors.gray100,
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/comment.svg',
                  height: 24,
                  width: 24,
                  color: EnjoeiColors.gray600,
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Pergunte ao vendedor',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: EnjoeiColors.gray600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: Header(),
          bottomNavigationBar: Footer(),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProductSlider(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: ProductActions(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
