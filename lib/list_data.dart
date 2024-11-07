// Sample event data
final List<Map<String, String>> eventData = [
  {
    'date': '23 Jul',
    'title': 'Roadshow Kampus',
    'image':
        'https://img.freepik.com/free-photo/female-speaker-giving-presentation-hall-university-workshop-audience-conference-hall_155003-27432.jpg?t=st=1729815526~exp=1729819126~hmac=ca0eaad72b31c7a5b21ccd6ea09102a17d38c6f3ae85068d663efa1dfe63728a&w=1380'
  },
  {
    'date': '30 Jul',
    'title': 'Ulang Tahun Zayn',
    'image':
        'https://img.freepik.com/free-photo/birthday-concept-with-friends-table_23-2147716810.jpg?t=st=1729815428~exp=1729819028~hmac=4f6765528459cabbff3754e1213535648c65516509b2800c738481739e3d173c&w=1380'
  },
  {
    'date': '20 Sep',
    'title': 'Resepsi P. Niall',
    'image':
        'https://img.freepik.com/free-photo/photorealistic-wedding-venue-with-intricate-decor-ornaments_23-2151481513.jpg?t=st=1729815644~exp=1729819244~hmac=92ee1254f2737e9ae6828016a8c8dd680100988b9a42ee029841eeb32c6efc33&w=1380'
  },
  {
    'date': '15 Okt',
    'title': 'Peluncuran Produk Baru',
    'image':
        'https://img.freepik.com/free-photo/front-view-cutting-red-ribbon-grand-opening-building_8353-10570.jpg?t=st=1729815707~exp=1729819307~hmac=f4e8ac34a2533dfacc4ffd94b33df6957ae53f59ec6cbfd13ebd5604b8547f93&w=1380'
  },
  {
    'date': '01 Nov',
    'title': 'Konser Musik Indie',
    'image':
        'https://img.freepik.com/free-photo/smiley-dj-woman-controlling-atmosphere_23-2148325418.jpg?t=st=1729815829~exp=1729819429~hmac=739453f72010914d30d52825123e42e96f2d4dbd19b8829278f852f401a9458b&w=826'
  },
  {
    'date': '12 Des',
    'title': 'Bazar Akhir Tahun',
    'image':
        'https://img.freepik.com/free-photo/medium-shot-smiley-people-outdoors_23-2149039816.jpg?t=st=1729816121~exp=1729819721~hmac=54f4c864660bb7e0adc11bae946b2d107c7600181a65b7db4ef8e71a080eb357&w=1380'
  },
  {
    'date': '24 Des',
    'title': 'Gala Dinner Perusahaan',
    'image':
        'https://img.freepik.com/free-photo/men-women-having-fun-together_329181-5678.jpg?t=st=1729816207~exp=1729819807~hmac=9d7792490beb8d8f35b6479036b1d47288870a6ce5a448364bf5546a6f786c80&w=1380'
  },
];

List<Map<String, dynamic>> eventServices = [
  {
    'title': 'Alat Pesta',
    'description':
        'Penyewaan alat pesta seperti meja, kursi, dan peralatan makan untuk berbagai acara.',
    'image': 'images/alat-pesta.jpg',
    'averagePrice': 2000000, // harga estimasi dalam IDR
    'rating': 4.5,
    'availableFor': ['Pernikahan', 'Ulang Tahun', 'Seminar'],
    'vendorContact': '082123456789',
  },
  {
    'title': 'Hiburan',
    'description':
        'Layanan hiburan seperti live band, DJ, dan performer untuk meramaikan acara.',
    'image': 'images/hiburan.jpg',
    'averagePrice': 5000000, // harga estimasi dalam IDR
    'rating': 4.8,
    'availableFor': ['Pernikahan', 'Festival', 'Acara Kantor'],
    'vendorContact': '082987654321',
  },
  {
    'title': 'Venue',
    'description':
        'Penyewaan tempat acara dengan fasilitas lengkap dan kapasitas sesuai kebutuhan.',
    'image': 'images/venue.jpg',
    'averagePrice': 15000000, // harga estimasi dalam IDR
    'rating': 4.7,
    'availableFor': ['Pernikahan', 'Konferensi', 'Festival'],
    'vendorContact': '081234567890',
  },
  {
    'title': 'Catering',
    'description':
        'Layanan katering dengan pilihan menu variatif untuk memenuhi kebutuhan makanan tamu acara.',
    'image': 'images/catering.jpg',
    'averagePrice': 3500000, // harga estimasi dalam IDR
    'rating': 4.9,
    'availableFor': ['Pernikahan', 'Ulang Tahun', 'Seminar'],
    'vendorContact': '081987654321',
  },
  {
    'title': 'Dekorasi',
    'description':
        'Layanan dekorasi sesuai tema untuk mempercantik venue acara, baik indoor maupun outdoor.',
    'image': 'images/dekorasi.jpg',
    'averagePrice': 4500000, // harga estimasi dalam IDR
    'rating': 4.6,
    'availableFor': ['Pernikahan', 'Ulang Tahun', 'Acara Kantor'],
    'vendorContact': '085123456789',
  },
  {
    'title': 'MC',
    'description':
        'Penyediaan MC profesional untuk memandu jalannya acara dengan lancar dan meriah.',
    'image': 'images/mc.jpg',
    'averagePrice': 2000000, // harga estimasi dalam IDR
    'rating': 4.7,
    'availableFor': ['Pernikahan', 'Ulang Tahun', 'Konferensi'],
    'vendorContact': '085987654321',
  },
  {
    'title': 'Fotografer',
    'description':
        'Layanan dokumentasi profesional dengan fotografer dan videografer berpengalaman untuk mengabadikan momen spesial.',
    'image': 'images/fotografer.jpg',
    'averagePrice': 6000000, // harga estimasi dalam IDR
    'rating': 4.9,
    'availableFor': ['Pernikahan', 'Ulang Tahun', 'Konferensi'],
    'vendorContact': '087123456789',
  },
];

final List<Map<String, String>> recomPlace = [
  {
    'name': 'Emerald Ballroom',
    'price': 'Rp2.000.000',
    'location': 'Jl. Gatot Subroto No.88, Jakarta',
    'description':
        'Ballroom luas dan elegan, cocok untuk acara besar dan pernikahan.',
    'image': 'https://images.unsplash.com/photo-1519167758481-83f550bb49b3?q=80&w=2996&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  },
  {
    'name': 'Sunset Beach Resort',
    'price': 'Rp3.200.000',
    'location': 'Jl. Pantai Barat No.77, Bali',
    'description':
        'Resort dengan akses langsung ke pantai, sempurna untuk acara yang eksklusif.',
    'image': 'https://images.unsplash.com/photo-1721617864119-611e4544ff07?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  },
  {
    'name': 'Skyline Convention Center',
    'price': 'Rp2.500.000',
    'location': 'Jl. Jenderal Sudirman No.45, Surabaya',
    'description':
        'Pusat konvensi modern dengan fasilitas canggih untuk acara bisnis.',
    'image': 'https://images.unsplash.com/photo-1503575977665-5e1e9bb63822?q=80&w=2048&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  },
  {
    'name': 'Lakeview Resort & Hotel',
    'price': 'Rp2.800.000',
    'location': 'Jl. Danau Indah No.21, Lombok',
    'description':
        'Hotel dengan pemandangan danau yang memukau, sempurna untuk liburan dan acara.',
    'image': 'https://plus.unsplash.com/premium_photo-1697729600112-434ee1c7f670?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  },
  {
    'name': 'Mountain View Lodge',
    'price': 'Rp2.200.000',
    'location': 'Jl. Bukit Tidar No.11, Malang',
    'description':
        'Lodge nyaman dengan pemandangan pegunungan, ideal untuk retret dan gathering.',
    'image': 'https://images.unsplash.com/photo-1490780558417-87ed9954aa15?q=80&w=2829&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  },
  {
    'name': 'The Crystal Palace',
    'price': 'Rp4.000.000',
    'location': 'Jl. M.H. Thamrin No.10, Jakarta',
    'description':
        'Venue eksklusif dengan desain mewah, tepat untuk acara VIP dan gala dinner.',
    'image': 'https://images.unsplash.com/photo-1594547290750-aac228651d21?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  },
];
