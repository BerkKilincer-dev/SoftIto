# Transformers & LLM

| # | Dosya | İçerik |
|---|---|---|
| 01 | `01_transformer_sifirdan.ipynb` | Ölçekli nokta çarpım dikkati, Multi-Head Attention, konum kodlaması, sıralama görevi |
| 02 | `02_mini_gpt.ipynb` | Causal maskeli, karakter seviyesi mini GPT |
| 03 | `03_hf_llm_sohbet.ipynb` | Hugging Face ile Qwen2.5 sohbet, tokenizer, temperature |
| 04 | `04_prompt_muhendisligi.ipynb` | Rol, few-shot, chain-of-thought, JSON çıktı |
| 05 | `05_modern_transformer_bilesenleri.ipynb` | √d_k ölçekleme, **Causal maske** ve sızıntı testi, **O(n²) bellek ve FlashAttention** (online softmax), **RoPE**, **RMSNorm**, **SwiGLU**, **MoE** ve yük dengeleme, LLaMA tarzı blok |
| 06 | `06_kv_cache_ve_lora.ipynb` | **KV Cache** ile üretim (doğruluk, hız, bellek, GQA), sıfırdan **LoRA** (rank karşılaştırması, adaptör aç/kapa, birleştirme), PEFT |
| 07 | `07_rag_ve_hizalama_rlhf_dpo.ipynb` | **RAG** (retriever, Hit@k, kaynaklı cevap, halüsinasyon karşılaştırması), **RLHF** (Bradley–Terry ödül modeli, KL kısıtlı politika), **DPO**, β analizi, TRL |
| 08 | `08_kuantizasyon.ipynb` | FP32/FP16/BF16/INT8/INT4, bellek bant genişliği, **simetrik vs asimetrik (zero-point)**, aykırı değerler ve group-wise, **PTQ**, aktivasyon kalibrasyonu, **QAT** (STE), bitsandbytes |
| 09 | `09_llm_guvenligi.md` | **Prompt enjeksiyonu** (doğrudan / dolaylı), **jailbreak** aileleri, **görsel linkleriyle veri sızdırma**, savunma katmanları, **red teaming** süreci, kontrol listesi |
| 10 | `10_aktivasyon_yonlendirme.ipynb` | **Activation steering**: residual stream okuma, zıt çiftlerden yön vektörü (CAA / ActAdd), **doğrusal sonda** ile katman seçimi, `register_forward_hook` ile yönlendirme, α taraması (duygu + perplexity), duygu ve üslup yönlerini birleştirme |
| 11 | `11_bilgi_damitma.ipynb` | **Knowledge distillation**: karanlık bilgi ve sıcaklık, Hinton kaybı, Fashion-MNIST'te öğretmen CNN → 40× küçük öğrenci, T ve α taraması, **FitNets** ara katman damıtma, LLM'lerde token seviyesi (Qwen2.5-1.5B → 0.5B) ve dizi seviyesi damıtma |

> 03, 04, 07, 10 ve 11 numaralı defterler Hugging Face Hub'dan model indirir; Colab'da T4 GPU ile çalıştırmanız önerilir. Hiçbiri ücretli API gerektirmez.
>
> RAG, LangChain ve LangGraph defterleri için → [`llm-agents/`](../llm-agents/)
