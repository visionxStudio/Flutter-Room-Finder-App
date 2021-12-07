class CoachModel {
  final String name;
  final String image;
  final bool isCertified;
  final List<String> courses;
  final List<String> skills;
  final String address;
  final int likes;
  final int comments;
  final double rating;
  final String price;

  CoachModel({
    required this.name,
    required this.image,
    required this.isCertified,
    required this.courses,
    required this.skills,
    required this.address,
    required this.likes,
    required this.comments,
    required this.rating,
    required this.price,
  });
}

final List<CoachModel> coachList = [
  CoachModel(
    name: "Mira Septimus",
    isCertified: true,
    image:
        "https://images.unsplash.com/photo-1508978644997-53cc5bfb8a03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    courses: ["Méditation", "Yoga", "Pilates"],
    skills: ["Masseur", "Maître nageur,", "STAPS"],
    address: "France, Lille",
    likes: 7,
    comments: 3,
    rating: 5,
    price: "29",
  ),
  CoachModel(
    name: "Justin Siphron",
    isCertified: false,
    image:
        "https://images.unsplash.com/photo-1508978644997-53cc5bfb8a03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    courses: ["Méditation", "Yoga", "Mise en forme"],
    skills: ["Skill1", "Skill2", "Skill3"],
    address: "France, Lille",
    likes: 7,
    comments: 3,
    rating: 3.4,
    price: "29",
  ),
  CoachModel(
    name: "Lincoln Vetrovs",
    isCertified: false,
    image:
        "https://images.unsplash.com/photo-1508978644997-53cc5bfb8a03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    courses: ["Méditation", "Yoga", "Mise en forme"],
    skills: ["Skill1", "Skill2", "Skill3"],
    address: "France, Lille",
    likes: 7,
    comments: 3,
    rating: 4,
    price: "29",
  ),
  CoachModel(
    name: "Dulce Bergson",
    isCertified: false,
    image:
        "https://images.unsplash.com/photo-1508978644997-53cc5bfb8a03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    courses: ["Méditation", "Yoga", "Mise en forme"],
    skills: ["Skill1", "Skill2", "Skill3"],
    address: "France, Lille",
    likes: 7,
    comments: 3,
    rating: 4.5,
    price: "29",
  ),
  CoachModel(
    name: "Erin Kenter",
    isCertified: false,
    image:
        "https://images.unsplash.com/photo-1508978644997-53cc5bfb8a03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    courses: ["Méditation", "Yoga", "Mise en forme"],
    skills: ["Skill1", "Skill2", "Skill3"],
    address: "France, Lille",
    likes: 7,
    comments: 3,
    rating: 2.5,
    price: "29",
  ),
];
