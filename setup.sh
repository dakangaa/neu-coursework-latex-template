#!/usr/bin/env bash
set -euo pipefail
# 仅支持本项目当前使用的 Linux x86_64, 不写入全局安装目录。
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"
if [[ "$(uname -s)" != "Linux" || "$(uname -m)" != "x86_64" ]]; then
    echo 'This installer supports Linux x86_64 only. Use XeLaTeX on other systems.' >&2
    exit 1
fi
mkdir -p .tools
# 校验固定版本的归档, 不执行远程安装脚本。
curl -fL --retry 3 'https://github.com/tectonic-typesetting/tectonic/releases/download/tectonic%400.17.0/tectonic-0.17.0-x86_64-unknown-linux-musl.tar.gz' -o .tools/tectonic.tar.gz
printf '%s\n' '8533d07f9ccbd7a65824b9e0459041bca34af1eb33daba48f59215593753a3b7  .tools/tectonic.tar.gz' | sha256sum -c -
tar -xzf .tools/tectonic.tar.gz -C .tools tectonic
./.tools/tectonic --version
