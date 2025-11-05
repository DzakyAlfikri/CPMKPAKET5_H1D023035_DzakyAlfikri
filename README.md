# Aplikasi Edukasi Lingkungan (CPMK Paket 5)

Repositori ini berisi proyek aplikasi mobile "Aplikasi Edukasi Lingkungan" yang dibuat untuk memenuhi tugas CPMK Paket 5.

- [cite_start]**Nama:** Dzaky Alfikri [cite: 1]
- [cite_start]**NIM:** H1D023035 [cite: 2]
- [cite_start]**Kelas:** Pemrograman Mobile A [cite: 3]
- [cite_start]**Repository:** [https://github.com/DzakyAlfikri/CPMKPAKET5_H1D023035_DzakyAlfikri.git](https://github.com/DzakyAlfikri/CPMKPAKET5_H1D023035_DzakyAlfikri.git) [cite: 5]

---

## 📜 Deskripsi Aplikasi

[cite_start]Aplikasi Edukasi Lingkungan adalah sebuah aplikasi mobile yang dirancang untuk meningkatkan kesadaran masyarakat terhadap pentingnya menjaga kebersihan dan kelestarian lingkungan[cite: 7]. [cite_start]Aplikasi ini menyediakan informasi edukatif tentang lingkungan hidup, cara daur ulang, tips hidup ramah lingkungan, serta fakta-fakta menarik seputar isu lingkungan[cite: 8].

## ✨ Fitur Utama

* [cite_start]**Halaman Beranda (Home):** Menyajikan sambutan dan navigasi utama dengan desain yang menarik[cite: 10].
* [cite_start]**Fakta Menarik:** Menampilkan statistik dan fakta penting tentang lingkungan hidup[cite: 11].
* [cite_start]**Cara Daur Ulang:** Panduan lengkap tentang proses dan manfaat daur ulang[cite: 12].
* [cite_start]**Tips Go Green:** Kumpulan tips praktis untuk gaya hidup ramah lingkungan[cite: 13].
* [cite_start]**Tentang Aplikasi:** Informasi tentang pengembang dan tujuan aplikasi[cite: 14].

## 🚀 Teknologi yang Digunakan

* [cite_start]**Framework:** Flutter [cite: 16]
* [cite_start]**Bahasa:** Dart [cite: 17]
* [cite_start]**State Management:** GetX [cite: 18]
* [cite_start]**UI/UX:** Material Design 3 [cite: 19]

## 📂 Struktur Proyek
lib/
├── app/
│   ├── modules/
│   │   ├── about/
│   │   │   └── about_view.dart
│   │   ├── daur/
│   │   │   └── daur_view.dart
│   │   ├── fakta/
│   │   │   └── fakta_view.dart
│   │   ├── home/
│   │   │   └── home_view.dart
│   │   └── tips/
│   │       └── tips_view.dart
│   ├── routes/
│   │   └── app_pages.dart
│   └── widgets/
│       ├── custom_app_bar.dart
│       ├── custom_bottom_nav.dart
│       ├── custom_drawer.dart
│       └── environment_illustration.dart
└── main.dart

| Folder | Tujuan Utama |
| :--- | :--- |
| `app/modules` | Berisi fitur/halaman (mis. home, about). [cite_start]Setiap fitur punya View, Controller, & Binding-nya sendiri. [cite: 21] |
| `app/routes` | [cite_start]Mengelola dan mendaftarkan semua rute navigasi aplikasi. [cite: 21] |
| `app/widgets` | [cite_start]Berisi komponen UI kustom (seperti tombol, kartu) yang dipakai di banyak halaman. [cite: 21] |
| `main.dart` | [cite_start]Memulai aplikasi dan mengkonfigurasi GetX. [cite: 21] |

---

## 🛠️ Penjelasan Rute & Widget Kustom

Bagian ini menjelaskan komponen inti yang membangun aplikasi.

### 1. Rute Navigasi (`app/routes/app_pages.dart`)

[cite_start] [cite: 22]

[cite_start]File ini adalah pusat konfigurasi rute untuk GetX[cite: 27]. [cite_start]File ini mendaftarkan semua halaman yang ada dan memberi tahu GetX halaman (View) mana yang harus dibuka untuk setiap nama rute: [cite: 23]

* [cite_start]Jika dipanggil `/home`, buka `HomeView` [cite: 24]
* [cite_start]Jika dipanggil `/fakta`, buka `FaktaView` [cite: 25]
* Jika dipanggil `/daur-ulang`, buka `DaurUlangView`
* Jika dipanggil `/tips`, buka `TipsView`
* Jika dipanggil `/about`, buka `AboutView`

### 2. Widget Kustom (`app/widgets/`)

Aplikasi ini menggunakan beberapa widget kustom untuk menjaga konsistensi UI dan fungsionalitas:

* **`Custom_app_bar.dart`**
    * [cite_start]Ini adalah widget AppBar kustom yang dipakai ulang untuk memberikan tampilan seragam[cite: 29].
    * [cite_start]Memiliki desain unik dengan latar belakang gradien hijau, sudut bawah melengkung, dan efek bayangan[cite: 30].
    * [cite_start]Tombol menu di sebelah kiri sudah diatur agar otomatis membuka `CustomDrawer` (menu samping) saat diketuk[cite: 31].

* **`Custom_bottom_nav.dart`**
    * [cite_start]Widget navigasi bawah kustom dengan desain "floating" yang unik[cite: 33].
    * [cite_start]Menggunakan `Stack` untuk menempatkan tombol "Home" besar di tengah di atas bar melengkung yang berisi tombol lainnya (Fakta, Daur, Tips, Tentang)[cite: 34].
    * [cite_start]Sangat fungsional: otomatis menyorot ikon yang aktif dengan membaca rute GetX saat ini (`Get.currentRoute`), dan menggunakan `Get.toNamed()` untuk berpindah halaman[cite: 35].

* **`Custom_drawer.dart`**
    * [cite_start]Kode untuk menu samping kustom (CustomDrawer) aplikasi[cite: 37].
    * [cite_start]Terdiri dari header kustom di atas (gradien hijau, judul aplikasi) dan daftar menu navigasi di bawahnya (Home, Fakta, Tips, dll.)[cite: 38].
    * [cite_start]Fungsional: Menggunakan `Get.currentRoute` untuk secara otomatis menyorot item menu yang sedang aktif dengan gaya berbeda[cite: 39].
    * [cite_start]Saat item diketuk, ia akan menutup drawer (`Get.back()`) terlebih dahulu, baru kemudian berpindah halaman (`Get.toNamed()`)[cite: 40].

* **`environment_illustration.dart`**
    * [cite_start]Widget ilustrasi kustom yang sederhana dan bisa dipakai ulang[cite: 42].
    * [cite_start]Tujuannya adalah untuk menampilkan ikon bertema lingkungan (`Icons.eco`) dengan teks label opsional di bawahnya[cite: 43].
    * [cite_start]Dibuat fleksibel sehingga ukuran ikon, warna, dan teks label bisa diatur setiap kali digunakan[cite: 44].

## 📱 Penjelasan Halaman (Views)

Setiap halaman (view) dalam folder `modules` dirancang sebagai `StatelessWidget` yang menggabungkan widget kustom (seperti AppBar, Drawer, dan BottomNav) untuk menampilkan konten spesifik.

### 1. Halaman Beranda (`home_view.dart`)

* [cite_start]Ini adalah kode UI (View) untuk halaman Home yang berfungsi sebagai pusat navigasi utama aplikasi[cite: 47].
* [cite_start]Tugasnya adalah menyusun tampilan beranda dengan menggabungkan semua widget kustom (`CustomAppBar`, `CustomDrawer`, `CustomBottomNav`)[cite: 48].
* [cite_start]Kartu "Mulai Belajar" (seperti "Fakta Menarik" dan "Tips") menggunakan `Get.toNamed()` untuk mengarahkan pengguna ke halaman/modul lain saat diketuk[cite: 49].

### 2. Halaman Fakta Menarik (`fakta_view.dart`)

* [cite_start]Ini adalah kode UI (View) untuk halaman "Fakta Menarik"[cite: 51].
* [cite_start]Menggunakan `CustomAppBar`, `CustomDrawer`, dan `CustomBottomNav` yang sama untuk menjaga konsistensi desain[cite: 52].
* [cite_start]Isinya adalah daftar fakta yang bisa di-scroll, dibagi menjadi tiga bagian: hero section ("Fakta Mengejutkan!"), grid 2x2 berwarna untuk Statistik, dan daftar Kartu Fakta utama[cite: 53].

### 3. Halaman Daur Ulang (`daur_view.dart`)

* [cite_start]Ini adalah kode UI (View) untuk halaman "Cara Daur Ulang"[cite: 55].
* [cite_start]Seperti halaman lainnya, halaman ini menggunakan `CustomAppBar`, `CustomDrawer`, dan `CustomBottomNav` yang konsisten[cite: 56].
* [cite_start]Konten utamanya adalah panduan daur ulang yang bisa di-scroll, dibagi menjadi: sapaan, statistik "Mengapa Penting?", panduan langkah-demi-langkah, dan galeri "Jenis Material"[cite: 57].

### 4. Halaman Tips Go Green (`tips_view.dart`)

* [cite_start]Ini adalah kode UI (View) untuk halaman "Tips Go Green"[cite: 59].
* [cite_start]Halaman ini adalah `StatelessWidget` yang tugasnya hanya menampilkan daftar tips ramah lingkungan yang bisa di-scroll[cite: 60].
* [cite_start]Halaman ini menggunakan `CustomAppBar`, `CustomDrawer`, dan `CustomBottomNav` yang sama dan membagi kontennya menjadi "Dampak Positif", "Tips Harian", dan "Tantangan Bulanan"[cite: 61].

### 5. Halaman Tentang Aplikasi (`about_view.dart`)

* [cite_start]Ini adalah kode UI (View) untuk halaman "Tentang Aplikasi"[cite: 63].
* [cite_start]Seperti halaman lainnya, halaman ini menggunakan `CustomAppBar`, `CustomDrawer`, dan `CustomBottomNav` yang konsisten[cite: 64].
* [cite_start]Isinya adalah daftar informasi yang bisa di-scroll, menjelaskan apa itu "EcoLearn", fitur utamanya, teknologi yang digunakan (Flutter, GetX), dan informasi versi serta developer (Dzaky Alfikri)[cite: 65].