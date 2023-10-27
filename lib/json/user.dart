class InstagramUser {
  int? id;
  String? username;
  String? fullName;
  String? bio;
  String? profileImageURL;
  int? postsCount;
  int? followersCount;
  int? followingCount;
  List<InstagramPost>? recentPosts;

  InstagramUser({
    this.id,
    this.username,
    this.fullName,
    this.bio,
    this.profileImageURL,
    this.postsCount,
    this.followersCount,
    this.followingCount,
    this.recentPosts,
  });

  InstagramUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    fullName = json['fullName'];
    bio = json['bio'];
    profileImageURL = json['profileImageURL'];
    postsCount = json['postsCount'];
    followersCount = json['followersCount'];
    followingCount = json['followingCount'];
    if (json['recentPosts'] != null) {
      recentPosts = [];
      json['recentPosts'].forEach((v) {
        recentPosts!.add(InstagramPost.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['fullName'] = this.fullName;
    data['bio'] = this.bio;
    data['profileImageURL'] = this.profileImageURL;
    data['postsCount'] = this.postsCount;
    data['followersCount'] = this.followersCount;
    data['followingCount'] = this.followingCount;
    if (this.recentPosts != null) {
      data['recentPosts'] = this.recentPosts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class InstagramPost {
  int? id;
  String? imageURL;
  String? caption;
  DateTime? postedDate;
  int? likesCount;
  int? commentsCount;

  InstagramPost({
    this.id,
    this.imageURL,
    this.caption,
    this.postedDate,
    this.likesCount,
    this.commentsCount,
  });

  InstagramPost.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageURL = json['imageURL'];
    caption = json['caption'];
    if (json['postedDate'] != null) {
      postedDate = DateTime.parse(json['postedDate']);
    }
    likesCount = json['likesCount'];
    commentsCount = json['commentsCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imageURL'] = this.imageURL;
    data['caption'] = this.caption;
    data['postedDate'] = this.postedDate?.toIso8601String();
    data['likesCount'] = this.likesCount;
    data['commentsCount'] = this.commentsCount;
    return data;
  }
}
