itc-benchmarks
==============

static analysis benchmarks from Toyota ITC


# The modified itc-benchmarks suite

This repository is nothing but a fork of the original ITC-benchmarks repo published on github [itc-benchmarks](https://github.com/regehr/itc-benchmarks) which is modified as explained in section [Modifications of the itc-bechmarks](#modifications-of-the-itc-bechmarks). The modifications are meant to facilitate the automatic analysis of the benchmark using static analysis tools. A suite of scripts that can be used to test the modified benchmark is available [here](https://github.com/andreiarusoaie/itc-testing-tools).

# Modifications of the itc-bechmarks

1. Updated comments in source code such that they have an uniform format: see [changes](https://github.com/andreiarusoaie/itc-benchmarks/commit/fd3c660ac2dba6207679e2b22b99adbd6edd0d49).
2. Added a CWE entry for every file: see [changes](https://github.com/andreiarusoaie/itc-benchmarks/commit/1ff9532fc4ae4ce4b374d0c11e1cf0bb5fe08e58).
3. Added missing comments for the improper error handling subdefect: see [changes](https://github.com/andreiarusoaie/itc-benchmarks/commit/e31f14dde6cd2b23aef151f24f828fba5287d6f5).
4. Added missing comments for the live lock subdefect: see [changes](https://github.com/andreiarusoaie/itc-benchmarks/commit/7113c82242138e5d98db8aa15a77a8e50236e5a3).
5. Added missing tests for the race condition subdefect: see [changes](https://github.com/andreiarusoaie/itc-benchmarks/commit/7abed254dc3d91a7cd992b5f9fd21855a5adacfc).
6. Added missing comments in the double release test case: see [changes](https://github.com/andreiarusoaie/itc-benchmarks/commit/35cc3adffdb5567445915ea6b1b7bb8dfffdf975).
7. Removed comments and updated names for static cross thread acess defect: see [change 1](https://github.com/andreiarusoaie/itc-benchmarks/commit/7f30bae69cbcc0359b4f7be826918f707b1d1a16) and [change 2](https://github.com/andreiarusoaie/itc-benchmarks/commit/659c593aa67675274a1d4732ae9b494837e617ea).
8. Added two header files `pthread.h` and `unistd.h` which enable analysis with static analysis tools like Frama-C or `cl /analyze` (MSVC analyzer). Because the benchmark does not compile if these files are present, they are currently renamed as `pthread.hx` and `unistd.hx` in every sub-directory, and should be renamed conveniently (i.e., `.hx` becomes `.h`) when performing the analysis.
