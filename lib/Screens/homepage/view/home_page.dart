import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/Screens/homepage/viewModel/home_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0XFFED3237),
                  Color(0XFFF79D3A),
                ],
              ),
            ),
          ),
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: const Text(
            'Test',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  width: 50,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/images/group.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'SOS',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.grey.shade200,
        body: Consumer<HomeViewModel>(builder: (context, viewmodel, child) {
          return CustomScrollView(
            slivers: [
              // Red container at the top
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            height: 200,
                            width: size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/image.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 20,
                          left: 50,
                          child: Text(
                            '8 DAYBIKE TRIP TO LEH LADAKH',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          bottom: 35,
                          left: 50,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 20),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 212, 191, 2),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Text(
                              'Register Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            'EVENTS FOR YOU',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: size.width,
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            height: 200,
                            width: size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/image.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 7),
                              decoration: const BoxDecoration(
                                color: const Color.fromARGB(255, 212, 191, 2),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                              ),
                              
                              child: const Text(
                                'invited',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            top: 20,
                            width: size.width/2,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                   vertical: 7),
                              // decoration: const BoxDecoration(
                              //   color: const Color.fromARGB(255, 212, 191, 2),
                              //   borderRadius: BorderRadius.only(
                              //     topRight: Radius.circular(15),
                              //     bottomLeft: Radius.circular(15),
                              //   ),
                              // ),
                              
                              child: const Text(
                                'HAYABUSA 2019HYDERABAD RIDERS MEETUP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Positioned(
                          bottom: 35,
                          left: 50,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 20),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 212, 191, 2),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Text(
                              '2000-8000 INR',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),

              // Sticky Header for "Nilesh"
              SliverPersistentHeader(
                pinned: true,
                delegate: StickyHeaderDelegate(
                  child: Consumer<HomeViewModel>(
                    builder: (context, viewModel, child) {
                      return Container(
                        // margin: const EdgeInsets.symmetric(horizontal: 20),
                        color: Colors.grey.shade200,
                        height: 50,
                        child: ListView.builder(
                          itemCount: viewModel.categories.length,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int i) {
                            return InkWell(
                              onTap: () {
                                viewModel.selectCategory(i);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(
                                  viewModel.categories[i],
                                  style: TextStyle(
                                    fontWeight: viewModel.selectedIndex == i
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    fontSize:
                                        viewModel.selectedIndex == i ? 18 : 16,
                                    color: viewModel.selectedIndex == i
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),

              // Black container content
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  if (viewmodel.selectedIndex == 0)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: viewmodel.rides.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int i) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 120,
                                  width: size.width,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Image.asset(
                                      viewmodel.rides[i]['image'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15))),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            viewmodel.rides[i]['trip_name'],
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            child: Icon(Icons.person),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                viewmodel.rides[i]['organiser'],
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13),
                                              ),
                                              const Text(
                                                'Ducati',
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                          const Spacer(),
                                          const Text(
                                            'Co Riders: 12',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.directions,
                                                color: Colors.red,
                                                size: 20,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '900 km',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_month,
                                                color: Colors.red,
                                                size: 20,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'July 20 2024',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_city,
                                                color: Colors.red,
                                                size: 20,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'hyderabad',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  else if (viewmodel.selectedIndex == 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.builder(
                        shrinkWrap: true,
                        // controller: _scrollController,
                        physics: const BouncingScrollPhysics(),
                        itemCount: viewmodel.stories.length,
                        itemBuilder: (BuildContext context, int i) {
                          return Card(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    viewmodel.stories[i]['title'],
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(viewmodel.stories[i]['content']),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  // Container(
                  //   margin: const EdgeInsets.symmetric(horizontal: 20),
                  //   height: 750,
                  //   color: Colors.yellow,
                  //   child: const Center(
                  //     child: Text(
                  //       'Stories',
                  //       style: TextStyle(color: Colors.black),
                  //     ),
                  //   ),
                  // )
                  else if (viewmodel.selectedIndex == 2)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 750,
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          'Market',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  else if (viewmodel.selectedIndex == 3)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 750,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          'Garage',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                ],
              )),
            ],
          );
        }),
      ),
    );
  }
}

class StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  StickyHeaderDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:task_app/Screens/homepage/viewModel/home_view_model.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

//     return ChangeNotifierProvider(
//       create: (_) => HomeViewModel(),
//       child: Scaffold(
//         body: Consumer<HomeViewModel>(
//           builder: (context, viewmodel, child) {
//             return CustomScrollView(
//               slivers: [
//                 SliverAppBar(
//                   floating: false,
//                   pinned: true,
//                   expandedHeight: 200.0,
//                   flexibleSpace: FlexibleSpaceBar(
//                     background: Column(
//                       children: [
//                         Container(
//                           decoration: const BoxDecoration(
//                             gradient: LinearGradient(
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                               colors: [
//                                 Color(0XFFED3237),
//                                 Color(0XFFF79D3A),
//                               ],
//                             ),
//                           ),
//                           child: AppBar(
//                             title: const Text('Test'),
//                             actions: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     height: 55,
//                                     width: 50,
//                                     decoration: const BoxDecoration(
//                                         shape: BoxShape.circle),
//                                     child: Image.asset(
//                                       'assets/images/group.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   const SizedBox(width: 10),
//                                   const Icon(
//                                     Icons.notifications,
//                                     color: Colors.white,
//                                     size: 30,
//                                   ),
//                                   const SizedBox(width: 10),
//                                   Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         padding: const EdgeInsets.symmetric(
//                                             vertical: 7, horizontal: 15),
//                                         decoration: BoxDecoration(
//                                           color: Colors.white,
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                         ),
//                                         child: const Text(
//                                           'SOS',
//                                           style: TextStyle(
//                                               color: Colors.red,
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   const SizedBox(width: 10),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         ClipRRect(
//                           child: Image.asset(
//                             'assets/images/ladakh.png',
//                             fit: BoxFit.cover,
//                             width: size.width,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SliverPersistentHeader(
//                   pinned: true,
//                   delegate: _SliverAppBarDelegate(
//                     child: Container(
//                       color: Colors.grey[200],
//                       padding: const EdgeInsets.symmetric(vertical: 10),
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: viewmodel.categories.length,
//                         itemBuilder: (BuildContext context, int i) {
//                           final isSelected = i == viewmodel.selectedIndex;
//                           return GestureDetector(
//                             onTap: () {
//                               viewmodel.selectCategory(i);
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 10),
//                               child: Text(
//                                 viewmodel.categories[i],
//                                 style: TextStyle(
//                                   fontWeight: isSelected
//                                       ? FontWeight.bold
//                                       : FontWeight.normal,
//                                   fontSize: isSelected ? 18 : 16,
//                                   color:
//                                       isSelected ? Colors.black : Colors.grey,
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//                 SliverList(
//                   delegate: SliverChildBuilderDelegate(
//                     (BuildContext context, int index) {
//                       // Example dynamic content
//                       if (viewmodel.selectedIndex == 0) {
//                         return Column(
//                           children: [
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               child: ClipRRect(
//                                 child: Image.asset(
//                                   'assets/images/nandi.png',
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 20),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               child: ClipRRect(
//                                 child: Image.asset(
//                                   'assets/images/kashmir.png',
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         );
//                       } else if (viewmodel.selectedIndex == 1) {
//                         return Card(
//                           child: Padding(
//                             padding: const EdgeInsets.all(20.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   viewmodel.stories[index]['title'],
//                                   style: const TextStyle(
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 const SizedBox(height: 5),
//                                 Text(viewmodel.stories[index]['content']),
//                               ],
//                             ),
//                           ),
//                         );
//                       } else {
//                         return Container(
//                           margin: const EdgeInsets.symmetric(horizontal: 20),
//                           height: 200,
//                           decoration: BoxDecoration(
//                             color: viewmodel.selectedIndex == 2
//                                 ? Colors.red
//                                 : Colors.blue,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Center(
//                             child: Text(
//                               viewmodel.selectedIndex == 2
//                                   ? 'MARKET'
//                                   : 'GARAGE',
//                               style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                     childCount: viewmodel.stories.length,
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   final Widget child;

//   _SliverAppBarDelegate({required this.child});

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return child;
//   }

//   @override
//   double get maxExtent => 60.0;

//   @override
//   double get minExtent => 60.0;

//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return false;
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:task_app/Screens/homepage/viewModel/home_view_model.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final ScrollController _scrollController = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_scrollListener);
//   }

//   void _scrollListener() {
//     // Adjust the stopping position based on your UI
//     const double stoppingPosition = 200; // Change this as needed

//     if (_scrollController.offset >= stoppingPosition &&
//         !_scrollController.position.outOfRange) {
//       _scrollController.jumpTo(stoppingPosition);
//     }
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

//     return ChangeNotifierProvider(
//       create: (_) => HomeViewModel(),
//       child: Scaffold(
//         appBar: AppBar(
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: <Color>[
//                   Color(0XFFED3237),
//                   Color(0XFFF79D3A),
//                 ],
//               ),
//             ),
//           ),
//           leading: const Icon(
//             Icons.menu,
//             color: Colors.white,
//           ),
//           title: const Text(
//             'Test',
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 55,
//                   width: 50,
//                   decoration: const BoxDecoration(shape: BoxShape.circle),
//                   child: Image.asset(
//                     'assets/images/group.png',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 const Icon(
//                   Icons.notifications,
//                   color: Colors.white,
//                   size: 30,
//                 ),
//                 const SizedBox(width: 10),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 7, horizontal: 15),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: const Text(
//                         'SOS',
//                         style: TextStyle(
//                             color: Colors.red,
//                             fontSize: 13,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 10),
//               ],
//             ),
//           ],
//         ),
//         body: Consumer<HomeViewModel>(
//           builder: (context, viewmodel, child) {
//             return SingleChildScrollView(
//               controller: _scrollController,
//               child: Column(
//                 children: [
//                   const SizedBox(height: 20),
//                   // Image and other initial content
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: ClipRRect(
//                       child: Image.asset(
//                         'assets/images/ladakh.png',
//                         fit: BoxFit.fitWidth,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           'EVENTS FOR YOU',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   // Categories
//                   Container(
//                     height: 50,
//                     color: Colors.grey[200],
//                     child: ListView.builder(
//                       itemCount: viewmodel.categories.length,
//                       shrinkWrap: true,
//                       physics: const BouncingScrollPhysics(),
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: (BuildContext context, int i) {
//                         final isSelected = i == viewmodel.selectedIndex;
//                         return GestureDetector(
//                           onTap: () {
//                             viewmodel.selectCategory(i);
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 10),
//                             child: Text(
//                               viewmodel.categories[i],
//                               style: TextStyle(
//                                 fontWeight: isSelected
//                                     ? FontWeight.bold
//                                     : FontWeight.normal,
//                                 fontSize: isSelected ? 18 : 16,
//                                 color: isSelected ? Colors.black : Colors.grey,
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   // Dynamic content
//                   if (viewmodel.selectedIndex == 0)
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: ClipRRect(
//                             child: Image.asset(
//                               'assets/images/nandi.png',
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: ClipRRect(
//                             child: Image.asset(
//                               'assets/images/kashmir.png',
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                       ],
//                     )
//                   else if (viewmodel.selectedIndex == 1)
//                     SizedBox(
//                       height: size.height,
//                       child: ListView.builder(
//                         shrinkWrap: true,
//                         controller: _scrollController,
//                         physics: const BouncingScrollPhysics(),
//                         itemCount: viewmodel.stories.length,
//                         itemBuilder: (BuildContext context, int i) {
//                           return Card(
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 10),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     viewmodel.stories[i]['title'],
//                                     style: const TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   const SizedBox(height: 5),
//                                   Text(viewmodel.stories[i]['content']),
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     )
//                   else if (viewmodel.selectedIndex == 2)
//                     Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 20),
//                       height: 400,
//                       width: size.width,
//                       decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           'MARKET',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     )
//                   else if (viewmodel.selectedIndex == 3)
//                     Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 20),
//                       height: 400,
//                       width: size.width,
//                       decoration: BoxDecoration(
//                         color: Colors.blue,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           'GARAGE',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
