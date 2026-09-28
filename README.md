# Pertemuan 2 — Dio & REST API + Handling Error

Latihan portal berita dengan pagination, infinite scroll, pull-to-refresh, dan handling state `loading / error / empty / success`.

- API: `https://jsonplaceholder.typicode.com/posts` (`_page`, `_limit`)
- `lib/main.dart`: sudah jadi, jangan diubah. Berisi UI + state handling.
- `lib/models/post_model.dart`: template, 1 TODO (`fromJson`).
- `lib/services/api_service.dart`: template, TODO(1)–TODO(4) (`BaseOptions`, `LogInterceptor`, `_dio.get`, `_handleDioError`).

## Cara Pakai

### Opsi B — Project baru VS Code (disarankan)

1. Di VS Code: `Flutter: New Project` → buka folder project baru.
2. Tambahkan `dio` di `pubspec.yaml`:
   ```yaml
   dependencies:
     dio: ^5.11.1
   ```
   Lalu jalankan:
   ```sh
   flutter pub get
   ```
3. Copy dari repo ini ke project baru, hanya:
   - `lib/main.dart`
   - `lib/models/post_model.dart`
   - `lib/services/api_service.dart`
   
   Jangan copy `android/`, `ios/`, `build/`, `.dart_tool/`, `pubspec.lock`.
4. Verifikasi:
   ```sh
   flutter analyze lib
   flutter run
   ```
   Kondisi awal template menampilkan `empty state` karena `fetchPosts` masih `return []`.

### Opsi A — Clone repo ini

1. Clone lalu masuk ke folder `pertemuan_2`.
2. Sesuaikan `pubspec.yaml` dengan versi Flutter masing-masing. Yang wajib ada:
   ```yaml
   dependencies:
     dio: ^5.11.1
   ```
   Alternatif: `flutter pub add dio`.
3. Jika error versi, bersihkan cache build:
   ```sh
   flutter clean
   flutter pub get
   flutter run
   ```

## Uji Empty / Error (cukup main di API)

- Empty: biarkan `return []` atau pakai `page` besar.
- Error koneksi: salah `baseUrl`.
- Error server: salah endpoint, misal `/postsXXX`.
- `main.dart` otomatis pindah ke `error / empty state` tanpa diubah.

## Troubleshooting Versi Flutter

- Cek versi: `flutter --version`
- `flutter pub get` gagal → cek `environment.sdk` di `pubspec.yaml`.
- Error aneh setelah ganti Flutter → `flutter clean`, hapus `build/` dan `.dart_tool/`, lalu `flutter pub get` ulang.
