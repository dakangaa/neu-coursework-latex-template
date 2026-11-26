#!/usr/bin/env bash
set -euo pipefail
# 固定工作目录, 编译器与宏包缓存均保存在项目内。
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"
export XDG_CACHE_HOME="$PWD/.cache"
export TECTONIC_CACHE_DIR="$PWD/.cache/Tectonic"
mkdir -p build "$TECTONIC_CACHE_DIR"
# Tectonic 使用 XeTeX 引擎并自动运行 BibTeX 和交叉引用所需轮次。
./.tools/tectonic --keep-logs --keep-intermediates --outdir build main.tex 2>&1 | tee build/compile.log
