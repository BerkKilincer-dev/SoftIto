-- Yabancı Anahtar (Foreign Key) Denetimini Açma
PRAGMA foreign_keys = ON;

-- ==========================================
-- 1. TABLO TASARIMI
-- ==========================================
CREATE TABLE uyeler (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ad TEXT NOT NULL,
    yas INTEGER CHECK(yas > 13),
    sehir TEXT DEFAULT 'Erzincan',
    kayit DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE kitaplar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ad TEXT NOT NULL UNIQUE
);

CREATE TABLE odunc (
    uye_id INTEGER,
    kitap_id INTEGER,
    gun INTEGER,
    PRIMARY KEY (uye_id, kitap_id),
    FOREIGN KEY (uye_id) REFERENCES uyeler(id) ON DELETE CASCADE,
    FOREIGN KEY (kitap_id) REFERENCES kitaplar(id)
);

-- ==========================================
-- 2. VERİ EKLEME
-- ==========================================
INSERT INTO kitaplar (ad) VALUES 
('Suç ve Ceza'), ('Sefiller'), ('1984'), ('Dönüşüm'), ('Yeraltından Notlar'), ('Simyacı');

INSERT INTO uyeler (ad, yas, sehir) VALUES 
('Ahmet', 22, 'İstanbul'),
('Ayşe', 25, 'Ankara'),
('Mehmet', 30, 'İzmir');

INSERT INTO uyeler (ad, yas) VALUES 
('Ali', 19), ('Fatma', 40), ('Veli', 28), 
('Zeynep', 21), ('Can', 35), ('Elif', 24), ('Burak', 27);

-- Hatalı ekleme denemeleri (Çalıştırıldığında hata fırlatır)
-- INSERT INTO uyeler (ad, yas) VALUES ('Kerem', 10);
-- INSERT INTO odunc (uye_id, kitap_id, gun) VALUES (99, 1, 10);

INSERT INTO odunc (uye_id, kitap_id, gun) VALUES 
(1, 1, 14), (1, 2, 35),
(2, 3, 5),  (2, 4, 40),
(3, 1, 20), (3, 5, 12),
(4, 2, 45), (4, 3, 8),
(5, 4, 18), (5, 5, 32),
(6, 1, 25), (6, 4, 38),
(7, 2, 10), (7, 3, 15),
(8, 1, 42), (8, 5, 20),
(9, 2, 33), (9, 4, 7),
(10,3, 22), (10,5, 28);

-- ==========================================
-- 3. JOIN SORGULARI
-- ==========================================
-- Üye adı, kitap adı ve gün sayısı
SELECT u.ad AS Uye_Adi, k.ad AS Kitap_Adi, o.gun 
FROM odunc o
JOIN uyeler u ON o.uye_id = u.id
JOIN kitaplar k ON o.kitap_id = k.id;

-- 30 günden uzun tutulan kitaplar
SELECT u.ad AS Uye_Adi, k.ad AS Kitap_Adi, o.gun 
FROM odunc o
JOIN uyeler u ON o.uye_id = u.id
JOIN kitaplar k ON o.kitap_id = k.id
WHERE o.gun > 30;

-- Sadece Erzincan'daki üyelerin aldığı kitaplar
SELECT u.ad, k.ad, o.gun 
FROM odunc o
JOIN uyeler u ON o.uye_id = u.id
JOIN kitaplar k ON o.kitap_id = k.id
WHERE u.sehir = 'Erzincan';

-- Hiç kitap almamış üyeleri de gösteren LEFT JOIN
SELECT u.ad, k.ad 
FROM uyeler u
LEFT JOIN odunc o ON u.id = o.uye_id
LEFT JOIN kitaplar k ON o.kitap_id = k.id;

-- ==========================================
-- 4. GRUPLAMA VE TOPLAMA (GROUP BY & AGGREGATE)
-- ==========================================
-- Ortalama, alınan kitap sayısı ve maksimum süre
SELECT u.ad, 
       AVG(o.gun) AS Ortalama_Sure, 
       COUNT(o.kitap_id) AS Kitap_Sayisi, 
       MAX(o.gun) AS En_Uzun_Sure
FROM uyeler u
JOIN odunc o ON u.id = o.uye_id
GROUP BY u.id, u.ad;

-- Ortalaması 20 günden fazla olanlar
SELECT u.ad, AVG(o.gun) AS Ortalama_Sure
FROM uyeler u
JOIN odunc o ON u.id = o.uye_id
GROUP BY u.id, u.ad
HAVING AVG(o.gun) > 20;

-- Kitapların ödünç alınma sayısı
SELECT k.ad, COUNT(o.kitap_id) AS Alinma_Sayisi
FROM kitaplar k
LEFT JOIN odunc o ON k.id = o.kitap_id
GROUP BY k.id, k.ad;

-- Şehirlere göre üye dağılımı
SELECT sehir, COUNT(id) AS Uye_Sayisi
FROM uyeler
GROUP BY sehir
ORDER BY Uye_Sayisi DESC;

-- ==========================================
-- 5. ALT SORGULAR (SUBQUERIES)
-- ==========================================
-- En az bir kitabı 30 günden uzun tutanlar
SELECT ad 
FROM uyeler 
WHERE id IN (SELECT uye_id FROM odunc WHERE gun > 30);

-- Hiç ödünç alınmamış kitaplar
SELECT ad 
FROM kitaplar 
WHERE id NOT IN (SELECT kitap_id FROM odunc);

-- Genel ortalamanın üzerinde tutulan kayıtlar
SELECT * 
FROM odunc 
WHERE gun > (SELECT AVG(gun) FROM odunc);

-- ==========================================
-- 6. CASE KULLANIMI
-- ==========================================
-- Gün durumları
SELECT uye_id, kitap_id, gun,
    CASE 
        WHEN gun > 30 THEN 'Gecikmiş'
        WHEN gun >= 15 AND gun <= 30 THEN 'Uyarı'
        ELSE 'Normal'
    END AS Durum
FROM odunc;

-- Yaş kategorileri
SELECT ad, yas,
    CASE 
        WHEN yas <= 18 THEN 'Genç'
        ELSE 'Yetişkin'
    END AS Kategori
FROM uyeler;

-- Durumlara göre kayıt sayısı
SELECT 
    CASE 
        WHEN gun > 30 THEN 'Gecikmiş'
        WHEN gun >= 15 AND gun <= 30 THEN 'Uyarı'
        ELSE 'Normal'
    END AS Durum,
    COUNT(*) AS Kayit_Sayisi
FROM odunc
GROUP BY Durum;

-- ==========================================
-- 7. INDEX VE ALTER TABLE
-- ==========================================
-- İsme göre index
CREATE INDEX idx_uyeler_ad ON uyeler(ad);

-- Sütun ekleme ve benzersiz index
ALTER TABLE uyeler ADD COLUMN eposta TEXT;
CREATE UNIQUE INDEX idx_uyeler_eposta ON uyeler(eposta);

-- Unique index hata testi (Çalıştırıldığında hata fırlatır)
-- UPDATE uyeler SET eposta = 'test@mail.com' WHERE id = 1;
-- UPDATE uyeler SET eposta = 'test@mail.com' WHERE id = 2;
