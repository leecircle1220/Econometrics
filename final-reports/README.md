# 匯率政策與出口反應：以 ECM 模型檢視台灣對美出口

> **113 學年度第二學期｜計量經濟學（二）期末報告**  
> Exchange Rate Policy and Export Responses: Evidence from an ECM Analysis of Taiwan's Exports to the United States

![Status](https://img.shields.io/badge/status-completed-brightgreen.svg)
![Method](https://img.shields.io/badge/method-ARDL%20%2F%20ECM-blue.svg)
![Period](https://img.shields.io/badge/sample-2002Q1--2023Q4-orange.svg)

本研究探討新台幣兌美元實質匯率變動對台灣出口至美國之動態影響。研究使用 2002 年第 1 季至 2023 年第 4 季的季度資料，透過自迴歸分佈滯後模型（Autoregressive Distributed Lag Model, ARDL）及誤差修正模型（Error Correction Model, ECM），檢驗台灣出口與匯率、產出及工業生產之長期均衡關係，以及 J 曲線效應與 Marshall-Lerner 條件是否成立。

## Table of Contents

* [Research Team](#research-team)
* [Research Questions](#research-questions)
* [Abstract](#abstract)
* [Key Findings](#key-findings)
* [Data](#data)
* [Variables](#variables)
* [Methodology](#methodology)
* [Empirical Results](#empirical-results)
* [Full Report](#full-report)
* [Limitations](#limitations)
* [References](#references)

## Research Team

| Name | Department | Student ID |
|:---|:---|:---|
| 李原廷 | 國立政治大學財政學系四年級 | 110306055 |
| 黃子慈 | 國立政治大學財政學系四年級 | 110205094 |

## Research Questions

This project addresses the following questions:

1. 台灣對美出口、實質匯率與其他總體經濟變數之間，是否存在長期共整合關係？
2. 新台幣兌美元匯率變動對台灣出口的短期動態效果為何？
3. 台灣對美出口是否存在典型的 J 曲線效應？
4. 台灣出口的匯率彈性是否支持 Marshall-Lerner 條件？
5. 若出口偏離長期均衡水準，其調整速度為何？

## Abstract

本研究旨在探討新台幣兌美元實質匯率變動對台灣出口至美國的動態影響機制。運用 2002 年第一季至 2023 年第四季的季度資料，本研究採用自迴歸分佈滯後（ARDL）模型與誤差修正模型（ECM）框架，檢驗 J 曲線效應與 Marshall-Lerner 條件在台灣的適用性。

實證結果顯示，台灣出口與實質匯率及其他關鍵總體變數之間存在顯著的長期共整合關係，且誤差修正機制有效。當出口偏離長期均衡時，每季約有 8.43% 的偏離會被修正。

研究結果支持台灣出口在長期與短期累積層面上符合 Marshall-Lerner 條件。然而，短期動態分析未發現典型 J 曲線效應；相反地，匯率貶值的衝擊在滯後期呈現負向反應。此結果可能與台灣出口產業高度依賴進口中間財有關：匯率貶值雖可能提高出口價格競爭力，但同時也提高進口原料、零組件與中間財成本，進而抵銷短期的競爭力效果。

**Keywords:** J-curve effect, Marshall-Lerner condition, ARDL, ECM, exchange-rate pass-through, cointegration

## Key Findings

| Research finding | Result |
|:---|:---|
| Long-run relationship | 台灣對美出口與模型中的總體經濟變數存在共整合關係。 |
| Bounds test | \(F = 81.3978\)，高於 1% 顯著水準的上界臨界值 \(5.06\)。 |
| ECM coefficient | \(\lambda = -0.0843\)，在 1% 顯著水準下顯著。 |
| Adjustment speed | 每季約修正 \(8.43\%\) 的長期失衡。 |
| Half-life of disequilibrium | 約 \(7.87\) 季，約 2 年。 |
| J-curve effect | 未發現典型 J 曲線效應。 |
| Marshall-Lerner condition | 長期出口彈性與短期累積彈性檢驗結果均支持此條件。 |


## Data

### Sample Period

* Frequency: Quarterly
* Period: 2002Q1–2023Q4
* Effective observations in the ECM estimation: 89

### Data Sources

| Variable category | Source |
|:---|:---|
| Taiwan's exports to the United States | Ministry of Finance, Customs Administration |
| Taiwan industrial production index | Ministry of Economic Affairs, Department of Statistics |
| Taiwan nominal GDP | Directorate-General of Budget, Accounting and Statistics |
| U.S. nominal GDP | U.S. Bureau of Economic Analysis |
| U.S. industrial production index | Board of Governors of the Federal Reserve System |
| NTD/USD exchange rate | Central Bank of the Republic of China (Taiwan) |


## Variables

All model variables are transformed using natural logarithms.

| Variable | Description | Unit | Integration order |
|:---|:---|:---|:---|
| `lex` | Taiwan's exports to the United States | Thousand U.S. dollars | \(I(1)\) |
| `lrexr` | NTD/USD real exchange rate | NTD per U.S. dollar | \(I(1)\) |
| `ltw_gdp` | Taiwan nominal GDP | Million NTD | \(I(1)\) |
| `lipi` | Taiwan industrial production index | Index | \(I(0)\) |
| `lusipi` | U.S. industrial production index | Index | \(I(1)\) |

## Methodology

### 1. Unit-Root Tests

The Augmented Dickey-Fuller (ADF) test is used to examine the stationarity of each time series.

The results indicate that:

* `lipi` is stationary in levels, \(I(0)\).
* `lex`, `ltw_gdp`, `lrexr`, and `lusipi` are non-stationary in levels but stationary after first differencing, \(I(1)\).

Because the variables are a mixture of \(I(0)\) and \(I(1)\), the ARDL bounds-testing framework is appropriate.

### 2. ARDL Model and Bounds Test

The selected specification is:

$$
ARDL(1,1,2,1,2)
$$

Lag orders are selected by the Akaike Information Criterion (AIC).

The bounds test evaluates whether a long-run cointegration relationship exists between Taiwan's exports to the United States and the explanatory variables.

| Statistic | Value |
|:---|:---|
| Bounds test \(F\)-statistic | 81.3978 |
| 1% upper bound critical value | 5.06 |
| Decision | Reject the null hypothesis of no cointegration |

### 3. Error Correction Model

After confirming cointegration, the ARDL model is reparameterized as an ECM:

$$
\begin{aligned}
\Delta \ln(ex_t)
&= \alpha
+ \beta_1 \Delta \ln(rexr_t)
+ \beta_2 \Delta \ln(rexr_{t-1})
+ \beta_3 \Delta \ln(rexr_{t-2}) \\
&\quad + \beta_4 \Delta \ln(tw\_gdp_t)
+ \beta_5 \Delta \ln(ipi_t)
+ \beta_6 \Delta \ln(usipi_t) \\
&\quad + \lambda ECT_{t-1}
+ \varepsilon_t
\end{aligned}
$$

The error-correction term is defined as:

$$
\begin{aligned}
ECT_{t-1}
&= \ln(ex_{t-1})
-  \phi_0
-  \phi_1 \ln(rexr_{t-1}) \\
&\quad - \phi_2 \ln(tw\_gdp_{t-1})
-  \phi_3 \ln(ipi_{t-1})
-  \phi_4 \ln(usipi_{t-1})
\end{aligned}
$$

A statistically significant coefficient satisfying \(-1 < \lambda < 0\) indicates convergence toward the long-run equilibrium.


### 4. J-Curve Test

A typical J-curve pattern is assessed using the signs of the short-run exchange-rate coefficients:

$$
\beta_1 < 0,\qquad \beta_2 > 0,\qquad \beta_3 > 0
$$

This pattern would indicate an initial deterioration followed by an improvement in exports after currency depreciation.

### 5. Marshall-Lerner Condition

The study evaluates whether the estimated long-run export elasticity and short-run cumulative elasticity satisfy the Marshall-Lerner condition.

The short-run cumulative exchange-rate effect is:

$$
\beta_1 + \beta_2 + \beta_3
$$

## Empirical Results

### ECM Estimation Results

| Variable | Estimate | Standard error | \(t\)-statistic | \(p\)-value |
|:---|---:|---:|---:|---:|
| \(\Delta \ln(rexr_t)\) | 0.3459 | 0.3883 | 0.891 | 0.3757 |
| \(\Delta \ln(rexr_{t-1})\) | -0.3468 | 0.3660 | -0.948 | 0.3461 |
| \(\Delta \ln(rexr_{t-2})\) | -0.6999 | 0.3499 | -2.000 | 0.0488 |
| \(\Delta \ln(tw\_gdp_t)\) | 0.1247 | 0.2224 | 0.561 | 0.5765 |
| \(\Delta \ln(ipi_t)\) | 0.9427 | 0.1364 | 6.911 | < 0.001 |
| \(\Delta \ln(usipi_t)\) | 1.2672 | 1.1683 | 1.085 | 0.2813 |
| \(ECT_{t-1}\) | -0.0843 | 0.0283 | -2.981 | 0.0038 |

### Error-Correction Mechanism

| Test | Criterion | Result |
|:---|:---|:---|
| Statistical significance | \(p < 0.05\) | Significant |
| Sign condition | \(\lambda < 0\) | Satisfied |
| Stability condition | \(\lvert \lambda \rvert < 1\) | Satisfied |
| Overall conclusion | Valid ECM mechanism | Supported |

The estimated error-correction coefficient is:

$$
\hat{\lambda} = -0.0843
$$

This implies that approximately \(8.43\%\) of the deviation from long-run equilibrium is corrected each quarter.

### J-Curve Test

| Period | Coefficient | Expected sign under a J-curve | Result |
|:---|---:|:---|:---|
| Current period | 0.3459 | Negative | Not supported |
| One-quarter lag | -0.3468 | Positive | Not supported |
| Two-quarter lag | -0.6999 | Positive | Not supported |

The estimated response does not follow the conventional J-curve pattern. Rather than a temporary deterioration followed by recovery, the lagged effects of exchange-rate depreciation are negative.

One possible explanation is Taiwan's dependence on imported raw materials, intermediate goods, and components. Currency depreciation may raise input costs and weaken export performance in the short run, offsetting the benefit of improved price competitiveness.

### Marshall-Lerner Condition

| Test | Result |
|:---|:---|
| Long-run export elasticity | Supports the export-elasticity condition |
| Short-run cumulative elasticity | Supports the condition statistically |
| Overall conclusion | Results are consistent with the Marshall-Lerner condition |

The estimated cumulative short-run exchange-rate effect is:

$$
0.3459 - 0.3468 - 0.6999 = -0.7009
$$

## Full Report

The full written report, including the literature review, detailed model derivations, tables, and references, is available here:

* [Download the final report (PDF)](final_reports_II/main.pdf)


## Limitations

* The sample period covers 2002Q1–2023Q4 and may not fully capture structural changes after this period.
* The model focuses on Taiwan's exports to the United States and does not directly examine imports or total trade balance.
* Exchange-rate effects may differ across industries because Taiwan's export sectors vary in their import dependence and market structure.
* The findings should be interpreted as empirical evidence from the selected specification and data period, rather than as a definitive causal conclusion.

## References

1. Bahmani-Oskooee, M., & Ratha, A. (2004). The J-curve: A literature review. *Applied Economics, 36*(13), 1377–1398.

2. Engle, R. F., & Granger, C. W. J. (1987). Co-integration and error correction: Representation, estimation, and testing. *Econometrica, 55*(2), 251–276.

3. Granger, C. W. J., & Newbold, P. (1974). Spurious regressions in econometrics. *Journal of Econometrics, 2*(2), 111–120.

4. Hsing, Y. (2005). A study of the J-curve for Japan, Korea and Taiwan. *Japan and the World Economy, 17*(1), 109–115.

5. Johansen, S. (1988). Statistical analysis of cointegration vectors. *Journal of Economic Dynamics and Control, 12*(2–3), 231–254.

6. Krugman, P. R., Obstfeld, M., & Melitz, M. J. (2018). *International economics: Theory and policy* (11th ed.). Pearson.

7. Lerner, A. P. (1944). *The economics of control: Principles of welfare economics*. Macmillan.

8. Lin, C. H., & Wang, C. C. (2009). An empirical study on the J-curve effect for Taiwan's bilateral trade with its major trading partners. *Applied Economics Letters, 16*(16), 1639–1644.

9. Magee, S. P. (1973). Currency contracts, pass-through, and devaluation. *Brookings Papers on Economic Activity, 1973*(1), 303–325.

10. Marshall, A. (1923). *Money, credit and commerce*. Macmillan.

11. Pesaran, M. H., Shin, Y., & Smith, R. J. (2001). Bounds testing approaches to the analysis of level relationships. *Journal of Applied Econometrics, 16*(3), 289–326.
