# ML — Makine Öğrenmesi

| Defter | İçerik |
|---|---|
| `SoftIto_ML_Linear_Regresion.ipynb` | Otomobil fiyatı (UCI Automobile) ile doğrusal regresyon |
| `SoftIto_abalone_linear_regression.ipynb` | Abalone veri setinde yaş tahmini, regresyon |
| `SoftIto_ML_2.ipynb` | Sınıflandırma, `StratifiedKFold` ve `cross_val_score` |
| `SoftIto_ML_3.ipynb` | Auto MPG: EDA, korelasyon, one-hot encoding, regresyon |
| `overfitting_regularizasyon_cv.ipynb` | Overfitting/underfitting, L1 vs L2, veri sızıntısı ve `StandardScaler`, K-Fold CV, `Pipeline` + `GridSearchCV` |
| `dengesiz_veri_agac_modelleri.ipynb` | Precision/Recall/F1, PR eğrisi, eşik ayarı, `class_weight`; sıfırdan Gradient Boosting, Random Forest vs XGBoost vs LightGBM, early stopping |

## overfitting_regularizasyon_cv.ipynb

1. **Overfitting / Underfitting:** Polinom regresyon ile derece 1 / 4 / 15, bias–variance U eğrisi, veri miktarının etkisi
2. **L1 vs L2:** 50 özellikten yalnızca 5'i etkili bir veri; Lasso'nun seyrekliği, regularizasyon yolları, Lasso ile özellik seçimi
3. **Veri sızıntısı:** `StandardScaler`'ı doğru kullanma, saf gürültüden %90 doğruluk "üreten" sızıntılı özellik seçimi, hedef sızıntısı örneği
4. **K-Fold CV:** Tek bölmenin şansa bağlılığı, elle yazılmış fold döngüsü, `KFold` vs `StratifiedKFold`, sızıntısız hiperparametre arama

## dengesiz_veri_agac_modelleri.ipynb

- **Bölüm A:** %3 pozitif sınıflı dolandırıcılık senaryosu; accuracy tuzağı, karmaşıklık matrisinden metrikleri elle hesaplama, doğrulama setinde eşik seçimi, ROC-AUC vs PR-AUC
- **Bölüm B:** Bagging ile varyans azaltma, sıfırdan Gradient Boosting, XGBoost ve LightGBM farkları, hız/doğruluk karşılaştırması, early stopping, özellik önemleri, `scale_pos_weight`
