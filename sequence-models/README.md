# Sequence Models — Dizi Modelleri

| Defter | İçerik |
|---|---|
| `rnn_pytorch_keras.ipynb` | RNN'in temel anlatımı, NumPy ile elle örnek, PyTorch ve Keras ile gürültülü sinüs tahmini |
| `lstm_pytorch_keras.ipynb` | LSTM: hücre durumu (taşıma bandı) ve 3 kapı (giriş, unutma, çıkış) |
| `gru_pytorch_keras.ipynb` | GRU: 2 kapı (güncelleme, sıfırlama), tek hafıza |
| `seq2seq_encoder_decoder.ipynb` | Kaybolan gradyanın ölçümü (RNN vs LSTM vs GRU), Encoder–Decoder ile tarih dönüştürme (`"12 ocak 1998"` → `"12.01.1998"`), teacher forcing, Attention ve hizalama haritaları |

Önerilen sıra: RNN → LSTM → GRU → Seq2Seq. Ardından `transformers-llm/` klasörüne geçin.
