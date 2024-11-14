class Service {
  String title;
  String description;
  String image;

  Service({
    required this.title,
    required this.description,
    required this.image,
  });
}

var serviceList = [
  Service(
    title: 'Alat Pesta',
    description: 'Penyewaan alat pesta seperti meja, kursi, dan peralatan makan untuk berbagai acara.',
    image: 'images/alat-pesta.jpg',
  ),
  Service(
    title: 'Hiburan',
    description: 'Layanan hiburan seperti live band, DJ, dan performer untuk meramaikan acara.',
    image: 'images/hiburan.jpg',
  ),
  Service(
    title: 'Venue',
    description: 'Penyewaan tempat acara dengan fasilitas lengkap dan kapasitas sesuai kebutuhan.',
    image: 'images/venue.jpg',
  ),
  Service(
    title: 'Catering',
    description: 'Layanan katering dengan pilihan menu variatif untuk memenuhi kebutuhan makanan tamu acara.',
    image: 'images/catering.jpg',
  ),
  Service(
    title: 'Dekorasi',
    description: 'Layanan dekorasi sesuai tema untuk mempercantik venue acara, baik indoor maupun outdoor.',
    image: 'images/dekorasi.jpg',
  ),
  Service(
    title: 'MC',
    description: 'Penyediaan MC profesional untuk memandu jalannya acara dengan lancar dan meriah.',
    image: 'images/mc.jpg',
  ),
  Service(
    title: 'Fotografer',
    description: 'Layanan dokumentasi profesional dengan fotografer dan videografer berpengalaman untuk mengabadikan momen spesial.',
    image: 'images/fotografer.jpg',
  ),
];
