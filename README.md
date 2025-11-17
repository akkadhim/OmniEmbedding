# Omni TM-AE

Minimal repository for building and evaluating Omni Tsetlin Machine Autoencoder embeddings.

Quick start
1. Install dependencies (requires pip/pip3):

   ```bash
   ./install_requirements.sh
   ```

2. Prepare data and build embeddings, then run experiments:
   - Run `1_prepare_corpus.ipynb` to prepare the dataset (X) and produce `vectorize_X`. These artifacts are used by the other notebooks.
   - Run `2_build_embedding.ipynb` to build the Omni TM_AE embedding for the prepared X and vectorized data, or for another dataset.
   - Run `3_similarity_exp.ipynb`, `4_clustering_exp.ipynb`, and `5_classification_exp.ipynb` as needed for the experiments you want to run.

Notes
- The installer is intentionally minimal and uses the system `pip` or `pip3` to install packages. Re-run with `sudo` if you need system-wide installation.
- This work builds on the methods described in the paper: https://arxiv.org/abs/2505.16386

