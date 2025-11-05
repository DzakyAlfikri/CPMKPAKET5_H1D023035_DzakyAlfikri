# Aplikasi Edukasi Lingkungan (CPMK Paket 5)

Repositori ini berisi proyek aplikasi mobile "Aplikasi Edukasi Lingkungan" yang dibuat untuk memenuhi tugas CPMK Paket 5.

- **Nama:** Dzaky Alfikri
- **NIM:** H1D023035
- **Kelas:** Pemrograman Mobile A
- **Repository:** [https://github.com/DzakyAlfikri/CPMKPAKET5_H1D023035_DzakyAlfikri.git](https://github.com/DzakyAlfikri/CPMKPAKET5_H1D023035_DzakyAlfikri.git)

---

## 📜 Deskripsi Aplikasi

Aplikasi Edukasi Lingkungan adalah sebuah aplikasi mobile yang dirancang untuk meningkatkan kesadaran masyarakat terhadap pentingnya menjaga kebersihan dan kelestarian lingkungan. Aplikasi ini menyediakan informasi edukatif tentang lingkungan hidup, cara daur ulang, tips hidup ramah lingkungan, serta fakta-fakta menarik seputar isu lingkungan.

## ✨ Fitur Utama

* **Halaman Beranda (Home):** Menyajikan sambutan dan navigasi utama dengan desain yang menarik.
* **Fakta Menarik:** Menampilkan statistik dan fakta penting tentang lingkungan hidup.
* **Cara Daur Ulang:** Panduan lengkap tentang proses dan manfaat daur ulang.
* **Tips Go Green:** Kumpulan tips praktis untuk gaya hidup ramah lingkungan.
* **Tentang Aplikasi:** Informasi tentang pengembang dan tujuan aplikasi.

## 🚀 Teknologi yang Digunakan

* **Framework:** Flutter
* **Bahasa:** Dart
* **State Management:** GetX
* **UI/UX:** Material Design 3

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
| `app/modules` | Berisi fitur/halaman (mis. home, about). Setiap fitur punya View, Controller, & Binding-nya sendiri. |
| `app/routes` | Mengelola dan mendaftarkan semua rute navigasi aplikasi. |
| `app/widgets` | Berisi komponen UI kustom (seperti tombol, kartu) yang dipakai di banyak halaman. |
| `main.dart` | Memulai aplikasi dan mengkonfigurasi GetX. |

---

## 🛠️ Penjelasan Rute & Widget Kustom

Bagian ini menjelaskan komponen inti yang membangun aplikasi.

### 1. Rute Navigasi (`app/routes/app_pages.dart`)

File ini adalah pusat konfigurasi rute untuk GetX. File ini mendaftarkan semua halaman yang ada dan memberi tahu GetX halaman (View) mana yang harus dibuka untuk setiap nama rute:

* Jika dipanggil `/home`, buka `HomeView`
* Jika dipanggil `/fakta`, buka `FaktaView`
* Jika dipanggil `/daur-ulang`, buka `DaurUlangView`
* Jika dipanggil `/tips`, buka `TipsView`
* Jika dipanggil `/about`, buka `AboutView`

### 2. Widget Kustom (`app/widgets/`)

Aplikasi ini menggunakan beberapa widget kustom untuk menjaga konsistensi UI dan fungsionalitas:

* **`Custom_app_bar.dart`**
    * Ini adalah widget AppBar kustom yang dipakai ulang untuk memberikan tampilan seragam.
    * Memiliki desain unik dengan latar belakang gradien hijau, sudut bawah melengkung, dan efek bayangan.
    * Tombol menu di sebelah kiri sudah diatur agar otomatis membuka `CustomDrawer` (menu samping) saat diketuk.

* **`Custom_bottom_nav.dart`**
    * Widget navigasi bawah kustom dengan desain "floating" yang unik.
    * Menggunakan `Stack` untuk menempatkan tombol "Home" besar di tengah di atas bar melengkung yang berisi tombol lainnya (Fakta, Daur, Tips, Tentang).
    * Sangat fungsional: otomatis menyorot ikon yang aktif dengan membaca rute GetX saat ini (`Get.currentRoute`), dan menggunakan `Get.toNamed()` untuk berpindah halaman.

* **`Custom_drawer.dart`**
    * Kode untuk menu samping kustom (CustomDrawer) aplikasi.
    * Terdiri dari header kustom di atas (gradien hijau, judul aplikasi) dan daftar menu navigasi di bawahnya (Home, Fakta, Tips, dll.).
    * Fungsional: Menggunakan `Get.currentRoute` untuk secara otomatis menyorot item menu yang sedang aktif dengan gaya berbeda.
    * Saat item diketuk, ia akan menutup drawer (`Get.back()`) terlebih dahulu, baru kemudian berpindah halaman (`Get.toNamed()`).

* **`environment_illustration.dart`**
    * Widget ilustrasi kustom yang sederhana dan bisa dipakai ulang.
    * Tujuannya adalah untuk menampilkan ikon bertema lingkungan (`Icons.eco`) dengan teks label opsional di bawahnya.
    * Dibuat fleksibel sehingga ukuran ikon, warna, dan teks label bisa diatur setiap kali digunakan.

## 📱 Penjelasan Halaman (Views)

Setiap halaman (view) dalam folder `modules` dirancang sebagai `StatelessWidget` yang menggabungkan widget kustom (seperti AppBar, Drawer, dan BottomNav) untuk menampilkan konten spesifik.

### 1. Halaman Beranda (`home_view.dart`)

* Ini adalah kode UI (View) untuk halaman Home yang berfungsi sebagai pusat navigasi utama aplikasi.
* Tugasnya adalah menyusun tampilan beranda dengan menggabungkan semua widget kustom (`CustomAppBar`, `CustomDrawer`, `CustomBottomNav`).
* Kartu "Mulai Belajar" (seperti "Fakta Menarik" dan "Tips") menggunakan `Get.toNamed()` untuk mengarahkan pengguna ke halaman/modul lain saat diketuk.

### 2. Halaman Fakta Menarik (`fakta_view.dart`)

* Ini adalah kode UI (View) untuk halaman "Fakta Menarik".
* Menggunakan `CustomAppBar`, `CustomDrawer`, dan `CustomBottomNav` yang sama untuk menjaga konsistensi desain.
* Isinya adalah daftar fakta yang bisa di-scroll, dibagi menjadi tiga bagian: hero section ("Fakta Mengejutkan!"), grid 2x2 berwarna untuk Statistik, dan daftar Kartu Fakta utama.

### 3. Halaman Daur Ulang (`daur_view.dart`)

* Ini adalah kode UI (View) untuk halaman "Cara Daur Ulang".
* Seperti halaman lainnya, halaman ini menggunakan `CustomAppBar`, `CustomDrawer`, dan `CustomBottomNav` yang konsisten.
* Konten utamanya adalah panduan daur ulang yang bisa di-scroll, dibagi menjadi: sapaan, statistik "Mengapa Penting?", panduan langkah-demi-langkah, dan galeri "Jenis Material".

### 4. Halaman Tips Go Green (`tips_view.dart`)

* Ini adalah kode UI (View) untuk halaman "Tips Go Green".
* Halaman ini adalah `StatelessWidget` yang tugasnya hanya menampilkan daftar tips ramah lingkungan yang bisa di-scroll.
* Halaman ini menggunakan `CustomAppBar`, `CustomDrawer`, dan `CustomBottomNav` yang sama dan membagi kontennya menjadi "Dampak Positif", "Tips Harian", dan "Tantangan Bulanan".

### 5. Halaman Tentang Aplikasi (`about_view.dart`)

* Ini adalah kode UI (View) untuk halaman "Tentang Aplikasi".
* Seperti halaman lainnya, halaman ini menggunakan `CustomAppBar`, `CustomDrawer`, dan `CustomBottomNav` yang konsisten.
* Isinya adalah daftar informasi yang bisa di-scroll, menjelaskan apa itu "EcoLearn", fitur utamanya, teknologi yang digunakan (Flutter, GetX), dan informasi versi serta developer (Dzaky Alfikri).