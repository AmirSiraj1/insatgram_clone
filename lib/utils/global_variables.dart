import 'package:flutter/cupertino.dart';
import 'package:insatgram_clone/screens/add_post_screen.dart';
import 'package:insatgram_clone/screens/feed_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Text('search'),
  AddPostScreen(),
  Text('notify'),
  Text('profile'),
];
