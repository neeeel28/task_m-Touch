import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  List categories = ['RIDES', 'STORIES', 'MARKET', 'GARAGE'];
  int selectedIndex = 0;
  final List<String> cities = ['Mumbai', 'Delhi', 'Bangalore', 'Chennai'];
  final List<String> bikeBrands = ['Honda', 'Yamaha', 'Kawasaki', 'Suzuki'];
  final List<String> sortByOptions = ['Price', 'Date', 'Popularity'];
  List rides = [
    {
      'image': "assets/images/image.webp",
      'trip_name': 'ride to nandi hills',
      'organiser': 'manish surapaneni',
    },
    {
      'image': "assets/images/image.webp",
      'trip_name': 'ride to cochi hills',
      'organiser': 'manish surapaneni',
    },
    {
      'image': "assets/images/image.webp",
      'trip_name': 'ride to vayanad hills',
      'organiser': 'manish surapaneni',
    },
    {
      'image': "assets/images/image.webp",
      'trip_name': 'ride to kerala hills',
      'organiser': 'manish surapaneni',
    }
  ];
  final List stories = [
    {
      'title': 'Title 1',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 2',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 3',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 4',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 5',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 6',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 7',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 8',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 9',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 10',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 11',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 12',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 13',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 14',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 15',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    },
    {
      'title': 'Title 16',
      'content':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis sed nibh quis consequat. Cras pulvinar dolor at ante dignissim imperdiet. Suspendisse posuere massa non nulla scelerisque vestibulum. Duis id pulvinar lacus, eget molestie orci. Aliquam pulvinar eu tellus quis vulputate'
    }
  ];
  String? selectedCity;
  String? selectedBikeBrand;
  String? selectedSortBy;

  selectCategory(int i) async {
    selectedIndex = i;
    notifyListeners();
  }
}
