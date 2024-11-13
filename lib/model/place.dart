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
      'https://images.unsplash.com/photo-1519167758481-83f550bb49b3?q=80&w=2996&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1519167758481-83f550bb49b3?q=80&w=2996&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',

    ],
    title: 'Emerald Ballroom',
    address: 'Jl. Gatot Subroto No.88, Jakarta',
    rating: 4.5,
    price: 'Rp2.000.000',
    description: 'Ballroom luas dan elegan, cocok untuk acara besar dan pernikahan.',
    listInfo: [
      Info(
        image: 'https://images.unsplash.com/photo-1519167758481-83f550bb49b3?q=80&w=2996&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Emerald Ballroom',
      ),
    ],
  ),
  Place(
    listImages: [
      'https://images.unsplash.com/photo-1721617864119-611e4544ff07?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ],
    title: 'Sunset Beach Resort',
    address: 'Jl. Pantai Barat No.77, Bali',
    rating: 4.5,
    price: 'Rp3.200.000',
    description: 'Resort dengan akses langsung ke pantai, sempurna untuk acara yang eksklusif.',
    listInfo: [
      Info(
        image: 'https://images.unsplash.com/photo-1721617864119-611e4544ff07?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Sunset Beach Resort',
      ),
    ],
  ),
  Place(
    listImages: [
      'https://images.unsplash.com/photo-1503575977665-5e1e9bb63822?q=80&w=2048&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ],
    title: 'Skyline Convention Center',
    address: 'Jl. Jenderal Sudirman No.45, Surabaya',
    rating: 4.5,
    price: 'Rp2.500.000',
    description: 'Pusat konvensi modern dengan fasilitas canggih untuk acara bisnis.',
    listInfo: [
      Info(
        image: 'https://images.unsplash.com/photo-1503575977665-5e1e9bb63822?q=80&w=2048&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Skyline Convention Center',
      ),
    ],
  ),
  Place(
    listImages: [
      'https://plus.unsplash.com/premium_photo-1697729600112-434ee1c7f670?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ],
    title: 'Lakeview Resort & Hotel',
    address: 'Jl. Danau Indah No.21, Lombok',
    rating: 4.5,
    price: 'Rp2.800.000',
    description: 'Hotel dengan pemandangan danau yang memukau, sempurna untuk liburan dan acara.',
    listInfo: [
      Info(
        image: 'https://plus.unsplash.com/premium_photo-1697729600112-434ee1c7f670?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Lakeview Resort & Hotel',
      ),
    ],
  ),
  Place(
    listImages: [
      'https://images.unsplash.com/photo-1490780558417-87ed9954aa15?q=80&w=2829&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ],
    title: 'Mountain View Lodge',
    address: 'Jl. Bukit Tidar No.11, Malang',
    rating: 4.5,
    price: 'Rp2.200.000',
    description: 'Lodge nyaman dengan pemandangan pegunungan, ideal untuk retret dan gathering.',
    listInfo: [
      Info(
        image: 'https://images.unsplash.com/photo-1490780558417-87ed9954aa15?q=80&w=2829&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Mountain View Lodge',
      ),
    ],
  ),
  Place(
    listImages: [
      'https://images.unsplash.com/photo-1594547290750-aac228651d21?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ],
    title: 'The Crystal Palace',
    address: 'Jl. M.H. Thamrin No.10, Jakarta',
    rating: 4.5,
    price: 'Rp4.000.000',
    description: 'Venue eksklusif dengan desain mewah, tepat untuk acara VIP dan gala dinner.',
    listInfo: [
      Info(
        image: 'https://images.unsplash.com/photo-1594547290750-aac228651d21?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'The Crystal Palace',
      ),
    ],
  ),
];