class Location {
  final String name;
  final double rating;
  final int ratingCount;
  final String description;
  final String imageAsset;

  Location({
    required this.name,
    required this.rating,
    required this.ratingCount,
    required this.description,
    required this.imageAsset,
  });
}

final List<Location> locations = [
  Location(
      name: "Yosemite National Park",
      rating: 4.0,
      ratingCount: 2030,
      description:
          "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome. In Yosemite Village are shops, restaurants, lodging, the Yosemite Museum and the Ansel Adams Gallery, offering prints of the photographer’s renowned black-and-white landscapes.",
      imageAsset: 'assets/images/one.jpg'),
  Location(
      name: "Grand Canyon National Park",
      rating: 4.5,
      ratingCount: 2030,
      description:
          "The Grand Canyon is a steep-sided canyon carved by the Colorado River in Arizona, United States. The Grand Canyon is 277 miles long, up to 18 miles wide and attains a depth of over a mile. The canyon and adjacent rim are contained within Grand Canyon National Park, the Kaibab National Forest, Grand Canyon-Parashant National Monument, the Hualapai Indian Reservation, the Havasupai Indian Reservation and the Navajo Nation.",
      imageAsset: 'assets/images/two.jpg'),
  Location(
      name: "Yellowstone National Park",
      rating: 4.5,
      ratingCount: 2030,
      description:
          "Yellowstone National Park is a nearly 3,500-sq.-mile wilderness recreation area atop a volcanic hot spot. Mostly in Wyoming, the park spreads into parts of Montana and Idaho too. Yellowstone features dramatic canyons, alpine rivers, lush forests, hot springs and gushing geysers, including its most famous, Old Faithful. It's also home to hundreds of animal species, including bears, wolves, bison, elk and antelope.",
      imageAsset: 'assets/images/three.jpg'),
  Location(
      name: "Zion National Park",
      rating: 4.5,
      ratingCount: 2030,
      description:
          "Zion National Park is a southwest Utah nature preserve distinguished by Zion Canyon’s steep red cliffs. Zion Canyon Scenic Drive cuts through its main section, leading to forest trails along the Virgin River. The river flows to the Emerald Pools, which have waterfalls and a hanging garden. Also along the river, partly through deep chasms, is Zion Narrows wading hike.",
      imageAsset: 'assets/images/four.jpg'),
];
