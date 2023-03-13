import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:insatgram_clone/screens/add_post_screen.dart';
import 'package:insatgram_clone/screens/feed_screen.dart';
import 'package:insatgram_clone/screens/profile_screen.dart';
import 'package:insatgram_clone/screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notify'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
