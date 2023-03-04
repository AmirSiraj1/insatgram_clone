import 'package:cloud_firestore/cloud_firestore.dart';

class MyPost {
  final String discription;
  final String uid;
  final String username;
  final String postId;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  MyPost({
    required this.discription,
    required this.uid,
    required this.postId,
    required this.username,
    required this.datePublished,
    required this.postUrl,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "discription": discription,
        "uid": uid,
        "username": username,
        "postId": postId,
        "datePublished": datePublished,
        "profImage": profImage,
        "likes": likes,
        "postUrl": postUrl
      };

  static MyPost fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return MyPost(
      discription: snapshot['discription'],
      uid: snapshot['uid'],
      postId: snapshot['postId'],
      username: snapshot['username'],
      datePublished: snapshot['datePublished'],
      postUrl: snapshot['postUrl'],
      profImage: snapshot['profImage'],
      likes: snapshot['likes'],
    );
  }
}
