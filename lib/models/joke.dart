class Joke {
  bool? error;
  String? category;
  String? type;
  String? joke;
  String? setup;
  String? delivery;
  Flags? flags;
  int? id;
  bool? safe;
  String? lang;

  Joke(
      {this.error,
      this.category,
      this.type,
      this.setup,
      this.delivery,
      this.flags,
      this.id,
      this.safe,
      this.lang});

  Joke.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    category = json['category'];
    type = json['type'];
    joke = json['joke'];
    setup = json['setup'];
    delivery = json['delivery'];
    flags = json['flags'] != null ? new Flags.fromJson(json['flags']) : null;
    id = json['id'];
    safe = json['safe'];
    lang = json['lang'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['error'] = error;
    data['category'] = category;
    data['type'] = type;
    data['setup'] = setup;
    data['delivery'] = delivery;
    if (flags != null) {
      data['flags'] = flags!.toJson();
    }
    data['id'] = id;
    data['safe'] = safe;
    data['lang'] = lang;
    return data;
  }
}

class Flags {
  bool? nsfw;
  bool? religious;
  bool? political;
  bool? racist;
  bool? sexist;
  bool? explicit;

  Flags(
      {this.nsfw,
      this.religious,
      this.political,
      this.racist,
      this.sexist,
      this.explicit});

  Flags.fromJson(Map<String, dynamic> json) {
    nsfw = json['nsfw'];
    religious = json['religious'];
    political = json['political'];
    racist = json['racist'];
    sexist = json['sexist'];
    explicit = json['explicit'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nsfw'] = nsfw;
    data['religious'] = religious;
    data['political'] = political;
    data['racist'] = racist;
    data['sexist'] = sexist;
    data['explicit'] = explicit;
    return data;
  }
}
