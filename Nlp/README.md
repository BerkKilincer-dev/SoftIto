# NLP — Tokenizasyon ve Kelime Temsilleri

| Defter | İçerik |
|---|---|
| `tf_idf_anlatim_regresyon.ipynb` | TF-IDF'in adım adım anlatımı ve metinle regresyon |
| `embedding_karsilastirma.ipynb` | TF-IDF vs Word2Vec vs FastText vs GloVe (gensim), 20 Newsgroups sınıflandırma |
| `bpe_alt_kelime_tokenizasyon.ipynb` | Kelime/karakter/alt-kelime karşılaştırması, **sıfırdan BPE**, byte-level BPE, HF `tokenizers`, Türkçenin "token vergisi" |
| `word2vec_glove_fasttext_sifirdan.ipynb` | PyTorch ile **sıfırdan** Skip-gram ve CBOW + Negative Sampling, GloVe eş-oluşum matrisi ve kaybı, FastText karakter n-gramları ve sözlük dışı kelimeler |

## Önerilen sıra

1. `bpe_alt_kelime_tokenizasyon` → metin nasıl tokenlara bölünür?
2. `tf_idf_anlatim_regresyon` → seyrek vektörler
3. `word2vec_glove_fasttext_sifirdan` → yoğun vektörlerin içi
4. `embedding_karsilastirma` → gerçek bir görevde karşılaştırma
