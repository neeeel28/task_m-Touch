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
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
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
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
        body: Consumer<HomeViewModel>(builder: (context, viewmodel, child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/ladakh.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'EVENTS FOR YOU',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/Frame.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    itemCount: viewmodel.categories.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int i) {
                      final isSelected = i == viewmodel.selectedIndex;
                      return GestureDetector(
                        onTap: () {
                          viewmodel.selectCategory(i);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 4),
                          child: Text(
                            viewmodel.categories[i],
                            style: TextStyle(
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: isSelected
                                  ? 18
                                  : 16, // Optional for better emphasis
                              color: isSelected
                                  ? Colors.black
                                  : Colors
                                      .black, // Optional for color distinction
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // City Dropdown
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                      child: DropdownButton<String>(
                        underline: const SizedBox(),
                        hint: const Text("Select City"),
                        value: viewmodel.selectedCity,
                        items: viewmodel.cities
                            .map((city) =>
                                DropdownMenuItem(value: city, child: Text(city)))
                            .toList(),
                        onChanged: (value) {
                          // setState(() {
                          //   selectedCity = value!;
                          // });
                        },
                      ),
                    ),

                    // Bike Brand Dropdown
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                      child: DropdownButton<String>(
                        underline: const SizedBox(),
                        hint: const Text("Bike Brand"),
                        value: viewmodel.selectedBikeBrand,
                        items: viewmodel.bikeBrands
                            .map((brand) => DropdownMenuItem(
                                value: brand, child: Text(brand)))
                            .toList(),
                        onChanged: (value) {
                          // setState(() {
                          //   selectedBikeBrand = value!;
                          // });
                        },
                      ),
                    ),

                    // Sort By Dropdown
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                      child: DropdownButton<String>(
                        underline: const SizedBox(),
                        hint: const Text("Sort By"),
                        value: viewmodel.selectedSortBy,
                        items: viewmodel.sortByOptions
                            .map((option) => DropdownMenuItem(
                                value: option, child: Text(option)))
                            .toList(),
                        onChanged: (value) {
                          // setState(() {
                          //   selectedSortBy = value!;
                          // });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/nandi.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/kashmir.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
