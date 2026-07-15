# Infoc Iosevka

基于 [Iosevka](https://github.com/be5invis/Iosevka) 定制并使用
[Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) 补全图标字形的字体集合。

## 内容

- `dist-nerd/InfocIosevka.ttc`：可直接安装的 TTC，内含 189 个字体面。
- `config.toml`：Iosevka 自定义构建计划。
- 宽度：Condensed、Semi Condensed、Normal、Semi Extended、Extended、
  Extra Extended、Ultra Extended。
- 字重：Thin、Extra Light、Light、Regular、Medium、Semi Bold、Bold、
  Extra Bold、Heavy。
- 形态：Normal、Italic、Oblique。

TTC 是自包含字体集合，安装时不需要单独下载 TTF。

## 下载

字体文件由 Git LFS 管理：

```bash
git lfs install
git clone https://github.com/INFO-studio/infoc-losevka.git
```

未安装 Git LFS 时，检出的 TTC 只会是一个指针文件。

## 安装

- macOS：双击 `InfocIosevka.ttc`，然后选择“安装字体”。
- Windows：右键 `InfocIosevka.ttc`，然后选择“安装”。
- Linux：复制到 `~/.local/share/fonts/`，再执行 `fc-cache -f`。

## 构建配置

当前基础字形使用 Iosevka 34.6.3。要构建未打 Nerd Fonts 补丁的基础字体：

```bash
git clone --branch v34.6.3 https://github.com/be5invis/Iosevka.git
cp config.toml Iosevka/private-build-plans.toml
cd Iosevka
npm ci
npm run build -- ttf::IosevkaCustom
```

`config.toml` 只描述 Iosevka 字形设计；仓库中的 TTC 是已完成 Nerd Fonts
补丁与集合封装的发布成品。

## 分支

- `main`：当前 TTC 与构建配置。
- `legacy`：替换前的旧版本归档。

## 许可与致谢

本项目是非官方定制版本。Iosevka 及其衍生字体采用
[SIL Open Font License 1.1](https://openfontlicense.org/)；Nerd Fonts
补丁字体采用 SIL OFL 1.1，其工具代码采用 MIT License。版权归各上游作者及
贡献者所有。
