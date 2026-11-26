# 课程作业 LaTeX 模板

从东北大学硕士学位论文模板改造的课程报告模板，保留封面、摘要、目录、正文及参考文献结构。这是个人维护的模板，并非学校官方模板；具体格式以课程要求为准。

## 使用

- 在 `cover.tex` 中填写封面信息，在 `coursework-config.tex` 中修改页眉课程名称。
- 在 `chapters/` 中撰写摘要、正文和结论；添加章节时，在 `main.tex` 中增加对应的 `\input`。
- 在 `references/refs.bib` 中添加 BibTeX 文献，用 `\cite{条目键}` 引用。
- 模板使用 XeLaTeX 或基于 XeTeX 的 Tectonic。需要安装系统字体 **Noto Serif CJK SC**、**Noto Sans CJK SC** 和 **Liberation Serif**；如需其他字体，可修改 `NEUMasterThesis.cls` 的字体设置。字体替换可能改变排版效果，本仓库不包含字体文件。

Linux x86_64 下可运行以下命令，安装项目内 Tectonic 并编译；首次编译需要联网下载宏包：

```bash
./setup.sh
./build.sh
```

输出位于 `build/main.pdf`。也可使用已安装的 TeX Live 运行 `latexmk -xelatex main.tex`；使用 Overleaf 时选择 XeLaTeX，并确保所需字体可用。

## 来源与许可

模板类与参考文献样式基于 [AIR-hl/neu-master-thesis-template](https://github.com/AIR-hl/neu-master-thesis-template) 的 `6988f9bbbaf4f8a401daa3135751999c833736a5` 版本，保留其 MIT 许可及版权声明，详见 [LICENSE](LICENSE)。课程作业结构、封面和配置在此基础上改造。原模板字体文件未随本项目分发。
