# SoftIto — Veri Bilimi, Makine Öğrenmesi ve LLM Çalışmaları

SoftIto eğitim sürecinde hazırlanan uygulamalı çalışmalar: Python ve veritabanı temellerinden başlayıp klasik makine öğrenmesi, NLP, dizi modelleri, modern Transformer mimarisi ve LLM'lere kadar uzanan, **Türkçe açıklamalı** Jupyter / Google Colab defterleri.

Her defterin başındaki **Open in Colab** rozetine tıklayarak kurulum yapmadan doğrudan tarayıcıda çalıştırabilirsiniz.

## Klasörler

| Klasör | İçerik |
|---|---|
| [Python](Python/) | Python temelleri, EDA, Matplotlib, veri bilimine giriş |
| [Database](Database/) | SQLite: tablo tasarımı, JOIN, GROUP BY, alt sorgular, CASE, index |
| [Statistic](Statistic/) | Tanımlayıcı ve çıkarımsal istatistik uygulamaları |
| [ML](ML/) | Regresyon, sınıflandırma, overfitting, regularizasyon, CV, dengesiz veri, ağaç modelleri |
| [Deep_Learning_and_neural_network](Deep_Learning_and_neural_network/) | Karar ağacı / Random Forest, K-Means kümeleme |
| [big_data](big_data/) | Colab üzerinde Apache Hadoop ve Apache Spark lab'ları |
| [Nlp](Nlp/) | Tokenizasyon, BPE, TF-IDF, Word2Vec, GloVe, FastText |
| [sequence-models](sequence-models/) | RNN, LSTM, GRU, kaybolan gradyan, Seq2Seq + Attention |
| [transformers-llm](transformers-llm/) | Sıfırdan Transformer, mini GPT, modern LLM bileşenleri, KV cache, LoRA, RAG, RLHF/DPO, kuantizasyon, LLM güvenliği |

## Konu haritası: Makine Öğrenmesi → LLM

### Makine Öğrenmesi ve İleri Algoritmalar
| Konu | Defter |
|---|---|
| Overfitting / Underfitting, bias–variance dengesi | [ML/overfitting_regularizasyon_cv.ipynb](ML/overfitting_regularizasyon_cv.ipynb) |
| L1 (Lasso) vs L2 (Ridge) regularizasyon | [ML/overfitting_regularizasyon_cv.ipynb](ML/overfitting_regularizasyon_cv.ipynb) |
| Veri sızıntısı (Data Leakage) ve `StandardScaler` | [ML/overfitting_regularizasyon_cv.ipynb](ML/overfitting_regularizasyon_cv.ipynb) |
| K-Fold Cross-Validation | [ML/overfitting_regularizasyon_cv.ipynb](ML/overfitting_regularizasyon_cv.ipynb) |
| Dengesiz veri: Precision, Recall, F1, PR-AUC, eşik ayarı | [ML/dengesiz_veri_agac_modelleri.ipynb](ML/dengesiz_veri_agac_modelleri.ipynb) |
| Random Forest (Bagging) vs XGBoost / LightGBM (Boosting) | [ML/dengesiz_veri_agac_modelleri.ipynb](ML/dengesiz_veri_agac_modelleri.ipynb) |

### NLP, Tokenizasyon ve Kelime Temsilleri
| Konu | Defter |
|---|---|
| Alt-kelime parçalama, sıfırdan BPE, byte-level BPE | [Nlp/bpe_alt_kelime_tokenizasyon.ipynb](Nlp/bpe_alt_kelime_tokenizasyon.ipynb) |
| Seyrek vektörler ve TF-IDF | [Nlp/tf_idf_anlatim_regresyon.ipynb](Nlp/tf_idf_anlatim_regresyon.ipynb) |
| Word2Vec (CBOW, Skip-gram, Negative Sampling) | [Nlp/word2vec_glove_fasttext_sifirdan.ipynb](Nlp/word2vec_glove_fasttext_sifirdan.ipynb) |
| GloVe (küresel eş-oluşum matrisi) | [Nlp/word2vec_glove_fasttext_sifirdan.ipynb](Nlp/word2vec_glove_fasttext_sifirdan.ipynb) |
| FastText (karakter n-gramları, OOV) | [Nlp/word2vec_glove_fasttext_sifirdan.ipynb](Nlp/word2vec_glove_fasttext_sifirdan.ipynb) |
| Hazır kütüphanelerle karşılaştırma | [Nlp/embedding_karsilastirma.ipynb](Nlp/embedding_karsilastirma.ipynb) |

### Dizi Modelleri
| Konu | Defter |
|---|---|
| RNN, gizli durum | [sequence-models/rnn_pytorch_keras.ipynb](sequence-models/rnn_pytorch_keras.ipynb) |
| LSTM: 3 kapı ve taşıma bandı | [sequence-models/lstm_pytorch_keras.ipynb](sequence-models/lstm_pytorch_keras.ipynb) |
| GRU: güncelleme ve sıfırlama kapıları | [sequence-models/gru_pytorch_keras.ipynb](sequence-models/gru_pytorch_keras.ipynb) |
| Kaybolan gradyan, Seq2Seq, Encoder–Decoder, Attention | [sequence-models/seq2seq_encoder_decoder.ipynb](sequence-models/seq2seq_encoder_decoder.ipynb) |

### Modern Transformer Mimarisi
| Konu | Defter |
|---|---|
| Self-Attention, Multi-Head Attention, sıfırdan Transformer | [transformers-llm/01_transformer_sifirdan.ipynb](transformers-llm/01_transformer_sifirdan.ipynb) |
| Causal maske ile mini GPT | [transformers-llm/02_mini_gpt.ipynb](transformers-llm/02_mini_gpt.ipynb) |
| FlashAttention, RoPE, Causal maske, RMSNorm, SwiGLU, MoE | [transformers-llm/05_modern_transformer_bilesenleri.ipynb](transformers-llm/05_modern_transformer_bilesenleri.ipynb) |

### LLM Çıkarım, İnce Ayar, Hizalama ve Kuantizasyon
| Konu | Defter |
|---|---|
| Hugging Face ile LLM sohbeti, prompt mühendisliği | [03](transformers-llm/03_hf_llm_sohbet.ipynb) · [04](transformers-llm/04_prompt_muhendisligi.ipynb) |
| KV Cache ve LoRA | [transformers-llm/06_kv_cache_ve_lora.ipynb](transformers-llm/06_kv_cache_ve_lora.ipynb) |
| RAG, RLHF ve DPO | [transformers-llm/07_rag_ve_hizalama_rlhf_dpo.ipynb](transformers-llm/07_rag_ve_hizalama_rlhf_dpo.ipynb) |
| FP16 → INT8/INT4, simetrik / asimetrik, PTQ vs QAT | [transformers-llm/08_kuantizasyon.ipynb](transformers-llm/08_kuantizasyon.ipynb) |
| Prompt enjeksiyonu, jailbreak, veri sızdırma, red teaming | [transformers-llm/09_llm_guvenligi.md](transformers-llm/09_llm_guvenligi.md) |

## Çalıştırma

**Google Colab (önerilen):** Defteri açın → rozete tıklayın → `Çalışma zamanı → Tümünü çalıştır`. GPU gerektiren defterlerde `Çalışma zamanı → Çalışma zamanı türünü değiştir → T4 GPU` seçin.

**Lokal:**
```bash
pip install numpy pandas matplotlib seaborn scikit-learn torch xgboost lightgbm transformers tokenizers jupyter
jupyter notebook
```

Her klasörün kendi README dosyasında o bölümün detayları bulunur.
