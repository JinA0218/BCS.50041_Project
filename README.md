# Teaching AI to Remember: Brain-Inspired Replay for Continual Learning

## Overview
Artificial neural networks (ANNs) excel at learning from large datasets but still suffer from **catastrophic forgetting**—the loss of previously learned knowledge when adapting to new tasks. Inspired by the **memory replay mechanisms** in the human brain, this project investigates the effectiveness of **internal replay** for **long-term memory in AI**.  

Using **CIFAR-100** in a **class-incremental learning (class-IL)** setting, we provide an in-depth analysis of internal replay, both as a standalone mechanism and in combination with **Synaptic Intelligence (SI)**. Our findings highlight the **trade-off between memory stability and learning plasticity**, while also revealing limitations of current brain-inspired approaches.  

---

## Motivation
Humans preserve long-term memories through **neural replay**, where patterns of past experiences are reactivated during learning and consolidation. Inspired by this, recent works (e.g., Van de Ven et al. 2020) proposed **brain-inspired replay mechanisms** to improve AI’s continual learning ability.  

This project:
- **Analyzes internal replay**—a hidden-level memory reactivation mechanism.  
- Explores its synergy with **Synaptic Intelligence (SI)**.  
- Evaluates how replay affects **accuracy, forgetting, and representational space**.  

---

## Methodology

### Models
We evaluate the following variants:
- **BIR (Brain-Inspired Replay)** with and without Internal Replay  
- **BIR + SI (Brain-Inspired Replay + Synaptic Intelligence)** with and without Internal Replay  

### Dataset
- **CIFAR-100** in **Class-Incremental Learning (Class-IL)** setup  
- Sequentially trained on **10 tasks** (10 classes each)  

### Metrics
- **Accuracy**: Initial, final, retention ratio, forgetting score  
- **Log-Likelihood & Reconstruction Error**: Measures representational fidelity  
- **Silhouette Score & UMAP**: Evaluates latent space separability  

---

## Key Results

1. **Retention vs Forgetting**  
   - Internal replay (IR) improves **retention ratio** and reduces **forgetting score**, especially when combined with SI.  
   - However, IR also reduces **initial accuracy**, indicating a stability–plasticity trade-off.  

2. **Representation Quality**  
   - IR models fit the data better (higher log-likelihood, lower reconstruction error).  
   - But hidden layer embeddings remain **poorly separated**, with **high representational overlap** across tasks.  

3. **Trade-Off Observed**  
   - **BIR + SI (w/ IR)** achieves the best long-term stability.  
   - **BIR (w/o IR)** achieves the best short-term plasticity.  

---

## Analysis & Insights
- **Internal Replay** helps mitigate catastrophic forgetting but lowers task-level learning capacity.  
- **Synaptic Intelligence (SI)** provides stability by protecting critical parameters, but slows adaptation.  
- **Open Problem**: How to retain strong initial performance while preventing forgetting.  

---

## Future Directions
- Investigate **sparsity of context-gating masks**
- Explore **layer-wise replay placement**
- Extend analysis with **hippocampus-inspired mechanisms** (e.g., conditional replay, spatial memory)
- Align AI replay models with **neuroscience theories** of memory consolidation

## References
- Van de Ven et al., Brain-inspired replay for continual learning with artificial neural networks. Nature Communications (2020)
- Zenke et al., Continual Learning through Synaptic Intelligence. ICML (2017)
- Bear et al., Neuroscience: Exploring the Brain. Jones & Bartlett (2020)
- Millichamp & Chen (2021), Ran et al. (2024), and other works on brain-inspired continual learning
