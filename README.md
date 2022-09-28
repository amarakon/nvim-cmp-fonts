nvim-cmp-fonts
================

## Contents

-   <a href="#introduction" id="toc-introduction">Introduction</a>
-   <a href="#installation" id="toc-installation">Installation</a>
    -   <a href="#packer" id="toc-packer"><span>Packer</span></a>

## Introduction

nvim-cmp-fonts is a completion source for
[nvim-cmp](https://github.com/hrsh7th/nvim-cmp) that provides sources
for fonts. It gets them from the fonts installed on your computer, which
you can see by using the `fc-list` command. *Support for updating the
font list every time you reopen Neovim is hopefully coming soon.*

## Installation

It is important to run the generate script after installing the plugin.
Otherwise, the source will not be made.

### [Packer](https://github.com/wbthomason/packer.nvim)

``` lua
use { "amarakon/nvim-cmp-fonts", run = "./generate.sh" }
```
