import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: primary,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Container(
                  height: 2000,
                  color: scaffoldbg,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "👋🏻 Hi Hapis!",
                          style: TextStyle(
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: PageView.builder(
                              itemCount: images.length,
                              pageSnapping: true,
                              controller: _pageController,
                              onPageChanged: (page) {
                                setState(() {
                                  activePage = page;
                                });
                              },
                              itemBuilder: (context, pagePosition) {
                                bool active = pagePosition == activePage;
                                return slider(images, pagePosition, active);
                              }),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: indicators(images.length, activePage))
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 350.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 7),
                          ),
                        ],
                        color: white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '🗓 Performa Bulan Ini',
                            style: TextStyle(
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 15,
                            ),
                            width: double.infinity,
                            height: 90,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: secondary,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  12.0,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text("Kamu udah keluarin",
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text("Rp89rb",
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        "Yuk, Bikin budget biar enggak overspend!",
                                        style: TextStyle(
                                            color: grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        '+ Buat Budget',
                                        style: TextStyle(
                                          color: primary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            width: double.infinity,
                            height: 90,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: secondary,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  12.0,
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(fontSize: 28),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Dikit lagi ',
                                          style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: 'cash flow ',
                                          style: TextStyle(
                                              fontStyle: FontStyle.italic,
                                              color: black,
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: 'kamu sehat\n',
                                          style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                        text: 'Cek cara tingkatin skornya',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: grey,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  textScaleFactor: 0.5,
                                ),
                                const Spacer(),
                                CircleAvatar(
                                  backgroundColor: Colors.red[100],
                                  child: const Center(
                                    child: Text(
                                      "28",
                                      style: TextStyle(
                                          color: red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: secondary,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  12.0,
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Belum ada tagihan",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                Spacer(),
                                Text(
                                  '+ Buat Tagihan',
                                  style: TextStyle(
                                    color: primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 200.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 7),
                          ),
                        ],
                        color: white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                '🎫 Transaksi Terakhir',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            "Kamis 8 September 2022",
                            style: TextStyle(
                                fontSize: 14,
                                color: grey,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            width: double.infinity,
                            height: 84,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: secondary,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  12.0,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                const FlutterLogo(
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Financial & Keuangan',
                                      style: TextStyle(
                                        color: black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: const [
                                        SizedBox(
                                          width: 150,
                                          child: Text(
                                            'Nulla cupidatat deserunt ea velit irure culpa nostrud anim ullamco tempor nisi ad dolor amet',
                                            maxLines: 1,
                                            softWrap: false,
                                            style: TextStyle(
                                              color: grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Rp6.440.000',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Buy BBRI',
                                      style: TextStyle(
                                        color: grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 200.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 7),
                          ),
                        ],
                        color: white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '💙 Fitur Menarik',
                            style: TextStyle(
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 100.0,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 26,
                                          backgroundColor: secondary,
                                          child: const Text(
                                            '🏆',
                                            style: TextStyle(fontSize: 26),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        const Text(
                                          'Capaian',
                                          style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Positioned(
                                      left: 33,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: red,
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                              color: white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 26,
                                          backgroundColor: Colors.grey[200],
                                          child: const Text(
                                            '🎁',
                                            style: TextStyle(fontSize: 26),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        const Text(
                                          'Ajak Teman',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Positioned(
                                      left: 46,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.red,
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 26,
                                          backgroundColor: secondary,
                                          child: const Text(
                                            '🤔',
                                            style: TextStyle(fontSize: 26),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        const Text(
                                          'Insight\nKamu',
                                          style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    const Positioned(
                                      left: 52,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: red,
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                              color: white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 26,
                                      backgroundColor: secondary,
                                      child: const Text(
                                        '🧾',
                                        style: TextStyle(fontSize: 26),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    const Text(
                                      'Bayar\nTagihan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 240.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 7),
                          ),
                        ],
                        color: white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                '🎯 Target',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(12),
                            dashPattern: const [4],
                            color: secondary,
                            strokeWidth: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              width: double.infinity,
                              height: 140,
                              child: Row(
                                children: [
                                  const FlutterLogo(
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const SizedBox(
                                        width: 270,
                                        child: Text(
                                          'Yuk catat dan capai target keuanganmu hari ini!',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 200,
                                        child: Text(
                                          'Catat target biar liburan & rumah impianmu gak jadi angan',
                                          softWrap: true,
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            'Tambah',
                                            style: TextStyle(
                                              color: primary,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: primary,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 330.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 7),
                          ),
                        ],
                        color: white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                '💰 FinFund',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Aktifkan',
                                style: TextStyle(
                                  color: primary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: primary,
                                size: 20,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: secondary,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Dapterin dana tunai hingga",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Rp ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: black),
                                      ),
                                      Text("50.000.000",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24,
                                              color: black)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: secondary,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                          style: TextStyle(fontSize: 28),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '✅',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Pengajuan instan',
                                              style: TextStyle(
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        textScaleFactor: 0.5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: secondary,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                          style: TextStyle(fontSize: 28),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '🤑',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Rp0 denda telat',
                                              style: TextStyle(
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        textScaleFactor: 0.5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: secondary,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                          style: TextStyle(fontSize: 28),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '💸',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Rate bunga 2,5%',
                                              style: TextStyle(
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        textScaleFactor: 0.5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: secondary,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    "Lihat Benefit Lainnya",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: primary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 250.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 7),
                          ),
                        ],
                        color: white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                '💡 Insight Tentang kamu',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(left: 2),
                                height: 25.0,
                                width: 50,
                                decoration: const BoxDecoration(
                                  color: red,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Baru ',
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  height: 160.0,
                                  decoration: const BoxDecoration(
                                    color: orange,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        height: 120.0,
                                        decoration: const BoxDecoration(
                                          color: cream,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              16.0,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              width: 252,
                                              child: Text(
                                                "Kamu bisa hemat biaya kopi, loh!",
                                                style: TextStyle(
                                                  color: textbrown,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20.0,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.only(
                                                  left: 2),
                                              height: 25.0,
                                              width: 50,
                                              decoration: const BoxDecoration(
                                                color: red,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    16.0,
                                                  ),
                                                ),
                                              ),
                                              child: const Text(
                                                'Baru ',
                                                style: TextStyle(
                                                  color: white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Baca Sekarang ',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: white,
                                              size: 12.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                  height: 160.0,
                                  decoration: const BoxDecoration(
                                    color: greenold,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        height: 120.0,
                                        decoration: const BoxDecoration(
                                          color: greenbg,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              16.0,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              width: 252,
                                              child: Text(
                                                "Investasikan reksa dana mulai dari Rp10.000 aja!",
                                                style: TextStyle(
                                                  color: textgreen,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20.0,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.only(
                                                  left: 2),
                                              height: 25.0,
                                              width: 50,
                                              decoration: const BoxDecoration(
                                                color: red,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    16.0,
                                                  ),
                                                ),
                                              ),
                                              child: const Text(
                                                'Baru ',
                                                style: TextStyle(
                                                  color: white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Baca Sekarang ',
                                              style: TextStyle(
                                                color: white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: white,
                                              size: 12.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Container(
                                    height: 160,
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      color: secondary,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 18,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 180.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 7),
                          ),
                        ],
                        color: white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                '🎫 Voucher Hapis',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(left: 2),
                                height: 25.0,
                                width: 50,
                                decoration: const BoxDecoration(
                                  color: red,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Baru ',
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                    height: 100.0,
                                    width: 300,
                                    decoration: const BoxDecoration(
                                      color: purplebg,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 24,
                                            width: 12,
                                            decoration: const BoxDecoration(
                                              color: white,
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(100),
                                                topRight: Radius.circular(100),
                                              ),
                                            )),
                                        const SizedBox(
                                          width: 12.0,
                                        ),
                                        const CircleAvatar(
                                          backgroundColor: white,
                                          backgroundImage: NetworkImage(
                                              'https://picsum.photos/1000'),
                                        ),
                                        const SizedBox(
                                          width: 15.0,
                                        ),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              RichText(
                                                text: const TextSpan(
                                                  style:
                                                      TextStyle(fontSize: 28),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Diskon ',
                                                        style: TextStyle(
                                                            color: textpurple,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                    TextSpan(
                                                        text: 'LIFEPAL ',
                                                        style: TextStyle(
                                                            color: textpurple,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    TextSpan(
                                                        text: 'sampai',
                                                        style: TextStyle(
                                                            color: textpurple,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                  ],
                                                ),
                                                textScaleFactor: 0.5,
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              const Text(
                                                "25%",
                                                style: TextStyle(
                                                  color: textpurple,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              const Text(
                                                  "Cek selengkapnya disini",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: textpurple,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                        const SizedBox(
                                          width: 0,
                                        ),
                                        const Spacer(),
                                        Container(
                                            height: 24,
                                            width: 12,
                                            decoration: const BoxDecoration(
                                              color: white,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(100),
                                                topLeft: Radius.circular(100),
                                              ),
                                            )),
                                      ],
                                    )),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                    height: 100.0,
                                    width: 300,
                                    decoration: const BoxDecoration(
                                      color: cream,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 24,
                                            width: 12,
                                            decoration: const BoxDecoration(
                                              color: white,
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(100),
                                                topRight: Radius.circular(100),
                                              ),
                                            )),
                                        const SizedBox(
                                          width: 12.0,
                                        ),
                                        const CircleAvatar(
                                          backgroundColor: white,
                                          backgroundImage: NetworkImage(
                                              'https://picsum.photos/1000'),
                                        ),
                                        const SizedBox(
                                          width: 15.0,
                                        ),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              RichText(
                                                text: const TextSpan(
                                                  style:
                                                      TextStyle(fontSize: 28),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Diskon ',
                                                        style: TextStyle(
                                                            color: textbrown,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                    TextSpan(
                                                        text: 'YELLOWFI ',
                                                        style: TextStyle(
                                                            color: textbrown,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    TextSpan(
                                                        text: 'sampai',
                                                        style: TextStyle(
                                                            color: textbrown,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                                  ],
                                                ),
                                                textScaleFactor: 0.5,
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              const Text(
                                                "10%",
                                                style: TextStyle(
                                                  color: textbrown,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              const Text(
                                                  "Cek selengkapnya disini",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: textbrown,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                        const SizedBox(
                                          width: 0,
                                        ),
                                        const Spacer(),
                                        Container(
                                            height: 24,
                                            width: 12,
                                            decoration: const BoxDecoration(
                                              color: white,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(100),
                                                topLeft: Radius.circular(100),
                                              ),
                                            )),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: 100.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: borderblue,
                        ),
                        color: youngblue,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Gimana sih cara pake Finku?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Pelajari bareng Fin-E!',
                                style: TextStyle(
                                  color: primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: primary,
                                size: 12,
                              ),
                            ],
                          ),
                        ],
                      ),
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
