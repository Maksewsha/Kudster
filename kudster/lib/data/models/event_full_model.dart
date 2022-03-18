class EventFullInfoModel {
  final int id;
  final int publicationDate;
  final List<_EventDates> dates;
  final String title;
  final String slug;
  final _EventPlace place;
  final String description;
  final String bodyText;
  final _EventLocation location;
  final List<String> categories;
  final String tagline;
  final String ageRestriction;
  final String price;
  final bool isFree;
  final List<_EventImages> images;
  final int favouritesCount;
  final int commentsCount;
  final String siteUrl;
  final String shortTitle;
  final List<String> tags;
  final bool disableComments;
  final List<_EventParticipants> participants;

  const EventFullInfoModel({
    required this.id,
    required this.publicationDate,
    required this.dates,
    required this.title,
    required this.slug,
    required this.place,
    required this.description,
    required this.bodyText,
    required this.location,
    required this.categories,
    required this.tagline,
    required this.ageRestriction,
    required this.price,
    required this.isFree,
    required this.images,
    required this.favouritesCount,
    required this.commentsCount,
    required this.siteUrl,
    required this.shortTitle,
    required this.tags,
    required this.disableComments,
    required this.participants,
  });

  factory EventFullInfoModel.fromJson(Map<String, dynamic> json) {
    return EventFullInfoModel(
      id: json['id'] as int,
      publicationDate: json['publication_date'] as int,
      dates: json['dates'] as List<_EventDates>,
      title: json['title'] as String,
      slug: json['slug'] as String,
      place: json['place'] as _EventPlace,
      description: json['description'] as String,
      bodyText: json['body_text'] as String,
      location: json['location'] as _EventLocation,
      categories: json['categories'] as List<String>,
      tagline: json['tagline'] as String,
      ageRestriction: json['age_restriction'] as String,
      price: json['price'] as String,
      isFree: json['is_free'] as bool,
      images: json['images'] as List<_EventImages>,
      favouritesCount: json['favourites_count'] as int,
      commentsCount: json['comments_count'] as int,
      siteUrl: json['site_url'] as String,
      shortTitle: json['short_title'] as String,
      tags: json['tags'] as List<String>,
      disableComments: json['disable_comments'] as bool,
      participants: json['participants'] as List<_EventParticipants>,
    );
  }
}

class _EventDates {
  final int start;
  final int end;
}

class _EventPlace {
  final int id;
}

class _EventLocation {
  final String slug;
}

class _EventImages {
  final String image;
  final _EventImagesSource source;
}

class _EventImagesSource {
  final String link;
  final String name;
}

class _EventParticipants {
  final _EventParticipantsRole role;
  final _EventParticipantsAgent agent;
}

class _EventParticipantsRole {
  final String slug;
}

class _EventParticipantsAgent {
  final int id;
  final String title;
  final String slug;
  final String agentType;
  final String site_url;
}
