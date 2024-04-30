import 'package:flutter/material.dart';
import 'package:gazeta/features/feed/feed_screen.dart';
import 'package:gazeta/features/home/screens/home_screen.dart';
import 'package:gazeta/features/post/screens/add_post_screen.dart';

//constant class hold some constant values like image and icon used in our project
class Constants {
  static const logoPath = 'assets/images/logo.png';
  static const signuppath = 'assets/svg/sign up-bro.svg';
  static const loginEmotePath = 'assets/images/login.png';
  static const googlePath = 'assets/images/google.png';
  static const profilePath = 'assets/images/profile.png';
  static const bannerDefault =
      'https://thumbs.dreamstime.com/b/abstract-stained-pattern-rectangle-background-blue-sky-over-fiery-red-orange-color-modern-painting-art-watercolor-effe-texture-123047399.jpg';
  static const avatarDefault =
      'https://external-preview.redd.it/5kh5OreeLd85QsqYO1Xz_4XSLYwZntfjqou-8fyBFoE.png?auto=webp&s=dbdabd04c399ce9c761ff899f5d38656d1de87c2';

  static const tabWidgets = [
    FeedScreen(),
    AddPostScreen(),
  ];

  static const IconData up =
      IconData(0xed51, fontFamily: 'MaterialIcons', fontPackage: null);
  static const IconData down =
      IconData(0xe658, fontFamily: 'MaterialIcons', fontPackage: null);

  static const awardsPath = 'assets/images/awards';

  static const awards = {
    'awesomeAns': '${Constants.awardsPath}/awesomeanswer.png',
    'gold': '${Constants.awardsPath}/gold.png',
    'platinum': '${Constants.awardsPath}/platinum.png',
    'helpful': '${Constants.awardsPath}/helpful.png',
    'plusone': '${Constants.awardsPath}/plusone.png',
    'rocket': '${Constants.awardsPath}/rocket.png',
    'thankyou': '${Constants.awardsPath}/thankyou.png',
    'til': '${Constants.awardsPath}/til.png',
  };
}
