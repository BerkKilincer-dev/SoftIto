# Database — SQLite Çalışmaları

SQLite üzerinde yapılan veritabanı çalışmaları. Sorgular [DB Browser for SQLite](https://sqlitebrowser.org/) ile çalıştırılmıştır.

## Dosyalar

| Dosya | Açıklama |
|---|---|
| `Task_2_database.sql` | Kütüphane veritabanı: tablo tasarımı, veri ekleme ve tüm sorgular |
| `Toys.db` | Oyuncak mağazası SQLite veritabanı (`oyuncaklar` tablosu) |
| `Toys.sqbpro` | `Toys.db` için DB Browser proje dosyası (kayıtlı SQL sekmesiyle birlikte) |

## Task 2 — Kütüphane Veritabanı

`Task_2_database.sql` içinde 3 tablo bulunur:

- **uyeler** — `id`, `ad`, `yas` (CHECK > 13), `sehir` (DEFAULT 'Erzincan'), `kayit` (DEFAULT CURRENT_TIMESTAMP)
- **kitaplar** — `id`, `ad` (UNIQUE)
- **odunc** — `uye_id`, `kitap_id`, `gun` (composite PK; `uyeler`'e ON DELETE CASCADE ile bağlı)

### İçerdiği konular

1. **Tablo tasarımı** — PRIMARY KEY, AUTOINCREMENT, NOT NULL, UNIQUE, CHECK, DEFAULT, FOREIGN KEY
2. **Veri ekleme** — 10 üye, 6 kitap, 20 ödünç kaydı (kısıt ihlali testleri yorum satırı olarak bırakıldı)
3. **JOIN** — INNER JOIN, çok tablolu JOIN, WHERE ile filtreleme, LEFT JOIN
4. **GROUP BY & Aggregate** — AVG, COUNT, MAX, HAVING, ORDER BY
5. **Alt sorgular** — IN, NOT IN, skaler alt sorgu (ortalama üstü kayıtlar)
6. **CASE** — gecikme durumu ve yaş kategorisi sınıflandırması
7. **Index & ALTER TABLE** — normal index, sütun ekleme, UNIQUE index

## Toys — Oyuncak Mağazası

`Toys.db` içinde `oyuncaklar` tablosu bulunur:

```sql
CREATE TABLE IF NOT EXISTS oyuncaklar (
    id    INTEGER PRIMARY KEY AUTOINCREMENT,
    isim  TEXT NOT NULL,
    cesit TEXT,
    fiyat REAL CHECK (fiyat > 0),
    renk  TEXT DEFAULT 'Kırmızı'
);
```

Temel SELECT, WHERE, ORDER BY, LIMIT, LIKE, IN, BETWEEN, UPDATE, DELETE ve ALTER TABLE örnekleri içerir.

## Kullanım

```bash
# SQL dosyasını yeni bir veritabanına çalıştırmak için
sqlite3 kutuphane.db < Task_2_database.sql

# Hazır veritabanını açmak için
sqlite3 Toys.db
```

Ya da `Toys.sqbpro` dosyasına çift tıklayarak DB Browser for SQLite ile açabilirsiniz.

## Not

`Task_2_database.sql` dosyasında `PRAGMA foreign_keys = ON;` satırı bulunur. Foreign key kısıtlarının çalışması için bu satırın her oturumda çalıştırılması gerekir.
