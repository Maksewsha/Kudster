class EventDomain{
  //TODO create model classes
  final int? id;
  final int? publicationDate;
  final List<EventDates>? dates;
  final String? title;
  final String? slug;
  final EventPlace? place;
  final String? description;
  final String? bodyText;
  final EventLocation? location;
  final List<String>? categories;
  final String? tagline;
  final String? ageRestriction;
  final String? price;
  final bool? isFree;
  final List<EventImages>? images;
  final int? favouritesCount;
  final int? commentsCount;
  final String? siteUrl;
  final String? shortTitle;
  final List<String>? tags;
  final bool? disableComments;
  final List<EventParticipants>? participants;

  const EventFullInfoModel({
    this.id,
    this.publicationDate,
    this.dates,
    this.title,
    this.slug,
    this.place,
    this.description,
    this.bodyText,
    this.location,
    this.categories,
    this.tagline,
    this.ageRestriction,
    this.price,
    this.isFree,
    this.images,
    this.favouritesCount,
    this.commentsCount,
    this.siteUrl,
    this.shortTitle,
    this.tags,
    this.disableComments,
    this.participants,
  });
}