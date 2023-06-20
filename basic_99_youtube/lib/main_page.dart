import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    List<String> topButtonsText = [
      '전체',
      '믹스',
      '음악',
      '애니메이션',
      '실시간',
      '요리',
      '반려동물'
    ];
    List<Widget> topButtons = [];

    for (int i = 0; i < topButtonsText.length; i++) {
      topButtons.add(const SizedBox(width: 12));
      topButtons.add(
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            backgroundColor: Colors.grey.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {},
          child: Text(topButtonsText[i],
              style: const TextStyle(fontSize: 14, color: Colors.black)),
        ),
      );
    }

    topButtons.insert(
      0,
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            backgroundColor: Colors.grey.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            )),
        onPressed: () {},
        child: const Icon(
          Icons.explore_outlined,
          weight: 100,
          color: Colors.black,
        ),
      ),
    );
    topButtons.insert(0, const SizedBox(width: 12));

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 72),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  // color: Colors.blue,
                  width: screenSize.width * 0.4,
                  height: 24,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      // Icon(Icons.circle),
                      Image.asset('assets/youtube.png', fit: BoxFit.fitWidth)
                    ],
                  )),
              SizedBox(
                  // color: Colors.blue,
                  width: screenSize.width * 0.6,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Icon(Icons.cast_outlined, size: 24),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Icon(Icons.notifications_outlined, size: 24),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Icon(Icons.search, size: 24),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.0),
                        child: Icon(Icons.circle, size: 24),
                      ),
                      SizedBox(width: 12)
                    ],
                  )),
            ],
          ),
          const SizedBox(height: 16),

          // 여기서부터 영상

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    // color: Colors.blue,
                    width: double.infinity,
                    height: 32,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: topButtons,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Stack(children: [
                    Container(
                      color: Colors.blue,
                      width: double.infinity,
                      height: 216,
                      child: Expanded(
                        child: Image.asset(
                          'assets/panda_04.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 12,
                      bottom: 8,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: const Text(
                          '16:21',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ]),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 12),
                          const Text('ooo'),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('동영상 제목입니다.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade900,
                                  )),
                              Text('닉네임 . 조회수 0회 . 업로드시간',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.more_vert, color: Colors.grey.shade500),
                          const SizedBox(width: 6)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        // color: Colors.blue,
                        width: screenSize.width * 0.4,
                        height: 24,
                        child: Row(
                          children: [
                            const SizedBox(width: 12),
                            // Icon(Icons.circle),
                            Image.asset('assets/shorts.png',
                                fit: BoxFit.fitWidth)
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        Stack(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/panda_01.png',
                                fit: BoxFit.fitHeight,
                                height: 272,
                                width: 160,
                              )),
                          const Positioned(
                            left: 10,
                            bottom: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('동영상 제목입니다.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                Text('조회수 0회',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ],
                            ),
                          )
                        ]),
                        const SizedBox(width: 12),
                        Stack(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/panda_02.png',
                                fit: BoxFit.fitHeight,
                                height: 272,
                                width: 160,
                              )),
                          const Positioned(
                            left: 10,
                            bottom: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('동영상 제목입니다.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                Text('조회수 0회',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ],
                            ),
                          )
                        ]),
                        const SizedBox(width: 12),
                        Stack(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/panda_03.png',
                                fit: BoxFit.fitHeight,
                                height: 272,
                                width: 160,
                              )),
                          const Positioned(
                            left: 10,
                            bottom: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('동영상 제목입니다.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                Text('조회수 0회',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ],
                            ),
                          )
                        ]),
                        const SizedBox(width: 12),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Stack(children: [
                    Container(
                      color: Colors.blue,
                      width: double.infinity,
                      height: 216,
                      child: Expanded(
                        child: Image.asset(
                          'assets/panda_05.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 12,
                      bottom: 8,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: const Text(
                          '16:21',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ]),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 12),
                          const Text('ooo'),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('동영상 제목입니다.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade900,
                                  )),
                              Text('닉네임 . 조회수 0회 . 업로드시간',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.more_vert, color: Colors.grey.shade500),
                          const SizedBox(width: 6)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_filled),
                          Text('홈', style: TextStyle(fontSize: 10))
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.sports_esports_outlined),
                          Text('Shorts', style: TextStyle(fontSize: 10))
                        ],
                      ),
                    )
                  ],
                ),
                const Icon(Icons.add_circle_outline, size: 36),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.subscriptions_outlined),
                          Text('구독', style: TextStyle(fontSize: 10))
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {},
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.video_library_outlined),
                          Text('보관함', style: TextStyle(fontSize: 10))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
