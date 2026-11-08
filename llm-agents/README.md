# LLM Agents — RAG, LangChain ve LangGraph

LLM'leri gerçek uygulamalara dönüştüren katman: bilgi getirme (RAG), araç kullanımı, ajanlar ve çoklu ajan sistemleri.

> **Tamamen ücretsiz:** Hiçbir defter ücretli API anahtarı gerektirmez. Modeller Colab GPU'sunda yerel olarak çalışır (Hugging Face modelleri ve Ollama + Qwen2.5). Colab'da `T4 GPU` seçmeniz yeterli.

| # | Defter | İçerik |
|---|---|---|
| 01 | `01_rag_derinlemesine.ipynb` | Chunking stratejileri, çok dilli embedding + **FAISS**, **BM25**, **hibrit arama (RRF)**, **cross-encoder reranking**, Hit@k / MRR / nDCG, Qwen2.5 ile kaynak gösteren cevap, **LLM-as-a-judge** ile sadakat ve doğruluk ölçümü |
| 02 | `02_langchain_arac_entegrasyonu.ipynb` | Ollama kurulumu, mesajlar, `invoke` / `stream` / `batch`, **ChatPromptTemplate**, **LCEL** zincirleri, `RunnableParallel`, **Pydantic ile yapılandırılmış çıktı**, `@tool` ile araç tanımlama, **tool calling döngüsünü elle yazmak**, `create_agent`, checkpointer ile hafıza, **RAG zinciri** ve retriever'ı araç olarak kullanmak |
| 03 | `03_langgraph_coklu_ajan.ipynb` | State, düğüm, kenar, reducer; LLM'siz ilk graf; **sıfırdan ReAct ajanı** (`ToolNode`, `tools_condition`); checkpointing ve geçmiş durumlar; **`interrupt` ile insan onayı**; **Supervisor çoklu ajan** sistemi; **yazar ⇄ eleştirmen** yansıtma döngüsü; **`Send` ile map-reduce**; çoklu ajan mimarileri |

## Önerilen sıra

1. `transformers-llm/03_hf_llm_sohbet` ve `04_prompt_muhendisligi`: LLM'lerle çalışmanın temelleri
2. `transformers-llm/07_rag_ve_hizalama_rlhf_dpo`: RAG'e giriş
3. `01_rag_derinlemesine`: üretim kalitesinde RAG
4. `02_langchain_arac_entegrasyonu`: zincirler, araçlar, ajanlar
5. `03_langgraph_coklu_ajan`: kontrol edilebilir ajanlar ve çoklu ajan sistemleri
6. `transformers-llm/09_llm_guvenligi.md`: ajanları güvenli hale getirmek
