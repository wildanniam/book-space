class Place {
  List<String> listImages;
  String title;
  String address;
  double rating;
  String price;
  String description;
  List<Info> listInfo;
  Place({
    required this.listImages,
    required this.title,
    required this.address,
    required this.rating,
    required this.price,
    required this.description,
    required this.listInfo,
  });
}

class Info {
  String? image;
  String? title;
  Info({this.image, this.title});
}

var placeList = [
  Place(
    listImages: [
      'https://images.unsplash.com/photo-1519167758481-83f550bb49b3?q=80&w=2996&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://img.freepik.com/free-photo/interior-st-stephen-s-cathedral-vienna_1398-2855.jpg?t=st=1731653227~exp=1731656827~hmac=b7a4344be0ce7d3e687af32f72b07ea25c402726a66d63429c0d419f62f24a7b&w=740',
      'https://img.freepik.com/free-photo/warm-welcoming-atmosphere-as-guests-arrive-party-venue_1268-30681.jpg?t=st=1731653339~exp=1731656939~hmac=6500dcac7812d7619531a7ad515e210fc80b876cf2884b448cb539766c8866a8&w=1800',
    ],
    title: 'Emerald Ballroom',
    address: 'Jl. Gatot Subroto No.88, Jakarta',
    rating: 4.5,
    price: 'Rp2.000.000',
    description:
        'Ballroom luas dan elegan, cocok untuk acara besar dan pernikahan.',
    listInfo: [
      Info(
        image:
            'https://images.unsplash.com/photo-1519167758481-83f550bb49b3?q=80&w=2996&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Emerald Ballroom',
      ),
    ],
  ),
  Place(
    listImages: [
      'https://images.unsplash.com/photo-1721617864119-611e4544ff07?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://img.freepik.com/free-photo/wooden-pier-fancy-orange-sunset_146671-18867.jpg?t=st=1731653458~exp=1731657058~hmac=6c44586b314d49f5e674088830e222e216095e18ae899265a398503a9616cb0b&w=1800',
      'https://img.freepik.com/free-photo/umbrella-chair-beautiful-beach-sea-sunrise-time-travel-vacation_74190-7913.jpg?t=st=1731653564~exp=1731657164~hmac=51d965ec67d6b377096f68cc4ae99c0ab3b7fa972a37912800ee9f4159a24630&w=1480'
    ],
    title: 'Sunset Beach Resort',
    address: 'Jl. Pantai Barat No.77, Bali',
    rating: 5,
    price: 'Rp3.200.000',
    description:
        'Resort dengan akses langsung ke pantai, sempurna untuk acara yang eksklusif.',
    listInfo: [
      Info(
        image:
            'https://images.unsplash.com/photo-1721617864119-611e4544ff07?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Sunset Beach Resort',
      ),
    ],
  ),
  Place(
    listImages: [
      'https://images.unsplash.com/photo-1503575977665-5e1e9bb63822?q=80&w=2048&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://img.freepik.com/free-photo/sky-steel-metropolis-commercial-background_1417-84.jpg?t=st=1731653623~exp=1731657223~hmac=097eeff0352c0bf0fef06e404b6a5c671308b33bcdc7a04636d7b2df651a8c46&w=1480',
      'https://img.freepik.com/free-photo/steel-city-downtown-landmark-attraction_1417-82.jpg?t=st=1731653663~exp=1731657263~hmac=ccc59a3dae0b8a66b7a8f2926f6a5e15d2e38b0709f64df273740eaee7cd12eb&w=1480',
    ],
    title: 'Skyline Convention Center',
    address: 'Jl. Jenderal Sudirman No.45, Surabaya',
    rating: 4.5,
    price: 'Rp2.500.000',
    description:
        'Pusat konvensi modern dengan fasilitas canggih untuk acara bisnis.',
    listInfo: [
      Info(
        image:
            'https://images.unsplash.com/photo-1503575977665-5e1e9bb63822?q=80&w=2048&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Skyline Convention Center',
      ),
    ],
  ),
  Place(
    listImages: [
      'https://plus.unsplash.com/premium_photo-1697729600112-434ee1c7f670?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://img.freepik.com/free-photo/beautiful-white-birds-mangal-das-garcas-park-city-belem-brazil_181624-27601.jpg?t=st=1731653712~exp=1731657312~hmac=be7152c140214d0da87c33692028c90a88df560b730492181e736108fec257e2&w=1480',
      'https://img.freepik.com/free-photo/umbrella-pool-chair_74190-1609.jpg?t=st=1731653747~exp=1731657347~hmac=d9cda83cdf403b1aba7cf83f3b5f2f387f52e539722029dbf493bf6ede100175&w=1480',
    ],
    title: 'Lakeview Resort & Hotel',
    address: 'Jl. Danau Indah No.21, Lombok',
    rating: 4.5,
    price: 'Rp2.800.000',
    description:
        'Hotel dengan pemandangan danau yang memukau, sempurna untuk liburan dan acara.',
    listInfo: [
      Info(
        image:
            'https://plus.unsplash.com/premium_photo-1697729600112-434ee1c7f670?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Lakeview Resort & Hotel',
      ),
    ],
  ),
  Place(
    listImages: [
      'https://images.unsplash.com/photo-1490780558417-87ed9954aa15?q=80&w=2829&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://img.freepik.com/free-photo/woman-taking-photo-morning-mist-phu-lang-ka-phayao-thailand_335224-950.jpg?t=st=1731653820~exp=1731657420~hmac=2938efdeecbe5e94af4c539b554f9f27c80486c917e843dc82b3a8fb61b61a2e&w=1800',
      'https://img.freepik.com/free-photo/beautiful-sunrise-wat-phra-that-pha-son-kaew-temple-khao-kho-phetchabun-thailand_335224-873.jpg?t=st=1731653868~exp=1731657468~hmac=469d18c7de3cc53694f1fafd4952998350d33a2ffa80bcca02d20a8fe1f8cf6c&w=1480',
    ],
    title: 'Mountain View Lodge',
    address: 'Jl. Bukit Tidar No.11, Malang',
    rating: 4.5,
    price: 'Rp2.200.000',
    description:
        'Lodge nyaman dengan pemandangan pegunungan, ideal untuk retret dan gathering.',
    listInfo: [
      Info(
        image:
            'https://images.unsplash.com/photo-1490780558417-87ed9954aa15?q=80&w=2829&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Mountain View Lodge',
      ),
    ],
  ),
  Place(
    listImages: [
      'https://images.unsplash.com/photo-1594547290750-aac228651d21?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://img.freepik.com/free-photo/famous-crystal-palace-retiro-park-madrid-spain_268835-1311.jpg?t=st=1731653912~exp=1731657512~hmac=b512a73efa60feaabd6ebb70a39c421302498130d6604afad8113426adab4b26&w=1480',
    ],
    title: 'The Crystal Palace',
    address: 'Jl. M.H. Thamrin No.10, Jakarta',
    rating: 4.5,
    price: 'Rp4.000.000',
    description:
        'Venue eksklusif dengan desain mewah, tepat untuk acara VIP dan gala dinner.',
    listInfo: [
      Info(
        image:
            'https://images.unsplash.com/photo-1594547290750-aac228651d21?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'The Crystal Palace',
      ),
    ],
  ),
];
