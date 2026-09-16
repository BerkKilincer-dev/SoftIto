# Python — Temel Programlama Çalışmaları

Python'a giriş çalışmaları. Tüm kodlar tek bir Jupyter notebook içinde, hücre hücre ilerleyecek şekilde düzenlenmiştir.

## Dosyalar

| Dosya | Açıklama |
|---|---|
| `SoftIto_python.ipynb` | Task 1 ve Task 2 çözümleri (25 hücre) |

## Task 1 — Temeller

| Konu | İçerik |
|---|---|
| `print()` | Ekrana yazdırma, metin ve sayı basma |
| Değişkenler | Değişken tanımlama ve değer güncelleme |
| Veri tipleri | `int`, `float`, `str`, `bool` ve `type()` ile tip kontrolü |
| Aritmetik operatörler | `+`, `-`, `*`, `/`, `%` (mod), `**` (üs) |
| `input()` | Kullanıcıdan veri alma, `int()` / `float()` ile tip dönüşümü |
| Karşılaştırma operatörleri | `>`, `<`, `==` |
| Mantıksal operatörler | `and`, `or`, `not` |
| `if` / `elif` / `else` | Pozitif-negatif kontrolü, geçti-kaldı kontrolü |
| String işlemleri | Birleştirme, `len()`, `upper()`, `lower()`, f-string |

## Task 2 — Uygulamalar

| Hücre | Konu |
|---|---|
| 12 | Aritmetik işlemler ve f-string ile formatlama |
| 13 | İç içe `if` yapıları — bilet ücreti, pozitif/çift sayı kontrolü |
| 14 | `elif` zinciri ve `in` operatörü — sıcaklık ve mevsim belirleme |
| 15 | `for` döngüsü — listedeki en büyük sayıyı ve sayaç mantığını bulma |
| 16 | `while` döngüsü — geri sayım, doğru girene kadar şifre sorma |
| 17 | `range()`, `%` ile filtreleme, listeyi pozitif/negatif olarak ayırma |
| 18 | Fonksiyon tanımlama ve `return` — küp alma, toplama |
| 19 | Parametreli fonksiyonlar — sayı durumu, üç sayının en büyüğü |
| 20 | Liste işlemleri — `append()`, `remove()`, `enumerate()`, `in` kontrolü |
| 21 | Yaş hesaplama ve BMI (Vücut Kitle İndeksi) hesaplayıcı |
| 22 | Not ortalaması ve harf notu — `max()`, `min()` |
| 23 | Alışveriş sepeti — `sum()`, koşullu indirim hesabı |

## Çalıştırma

```bash
# Jupyter ile
pip install notebook
jupyter notebook SoftIto_python.ipynb
```

Alternatif olarak dosyayı [Google Colab](https://colab.research.google.com/)'a sürükleyip bırakarak da açabilirsiniz (kurulum gerektirmez).

## Not

Notebook'taki birçok hücre `input()` ile kullanıcıdan veri bekler. Bu hücreleri çalıştırdığınızda altta çıkan kutuya değer girip Enter'a basmanız gerekir.
