# 例 3-2-1：$\lim_{n \to \infty} 1/n = 0$ の証明を読み解く

## ゴール宣言

「$\lim_{n \to \infty} 1/n = 0$」を定義通りに展開すると：

$$\forall \varepsilon > 0,\ \exists N \in \mathbb{N},\ \forall n > N,\ \left|\frac{1}{n} - 0\right| < \varepsilon$$

これを示すのがゴール。

## 証明の構造マップ

ε-N 定義の各部分に、証明の各ステップが対応している：

| 定義の部分 | 証明の対応箇所 | 内容 |
|:---|:---|:---|
| $\forall \varepsilon > 0$ | 「任意の $\varepsilon > 0$ を取る」 | $\varepsilon$ を任意元として固定 |
| $\exists N \in \mathbb{N}$ | 「$\frac{1}{\varepsilon} < N$ を満たす $N$ が存在」 | アルキメデスの原理で $N$ を作る |
| $\forall n > N$ | 「任意の $n > N$ に対して」 | $n$ を任意に取る |
| $\left\|\frac{1}{n} - 0\right\| < \varepsilon$ | 不等式チェーン $\frac{1}{n} < \frac{1}{N} < \varepsilon$ | 上の3つを使って結論の不等式を導く |

これは CLAUDE.md の証明フォーマット「型：任意元固定 → 仮定 → 導出 → 結論」そのもの。

## どこが詰まっている？選択肢

次のうち、特に「どゆこと？」と感じるのはどれ？（複数可）

**A. 全体の流れ**
- 4つのステップが、なぜ「lim = 0」を示したことになるのか

**B. なぜアルキメデスを使うのか**
- $N$ をどうやって作ればいいのか、その動機

**C. なぜ「$\frac{1}{\varepsilon} < N$」を選ぶのか**
- $\varepsilon$ から $N$ を作る式が、なぜこの形なのか

**D. 不等式 $\frac{1}{n} < \frac{1}{N} < \varepsilon$ の導出**
- $n > N$ から $\frac{1}{n} < \frac{1}{N}$ になる理由
- $\frac{1}{N} < \varepsilon$ になる理由

**E. その他**
