# BTOR2 support for VIM

## What is this?
A VIM plugin that adds syntax highlighting for the **BTOR2** word-level model checking format, i.e. `*.btor2` files.

The plugin also provides **shortcuts for evaluating the current file** using **[boolector](https://github.com/Boolector/boolector)**:
* `<localleader>r` evaluates the current file (in a terminal)
* `<localleader>R` evaluates the current file and puts the output in a new split with syntax highlighting

*Note: Unless you've set `<localleader>` to a custom key, it is `\` (VIM default).*

## Installation

| Plugin Manager | Instructions |
| ------------- | ------------- |
| [Pathogen](https://github.com/tpope/vim-pathogen) | <ol><li>`cd ~/.vim/bundle`</li><li>`git clone https://github.com/phlo/vim-btor2`</li></ol> |
| [Vundle](https://github.com/VundleVim/Vundle.vim) | <ol><li>add `Plugin 'phlo/vim-btor2'` to your `~/.vimrc` file (*before `call vundle#end()`*)</li><li>reload your `~/.vimrc` or restart VIM</li><li>run `:PluginInstall` in VIM</li></ol> |
| manual (discouraged) | Extract the archive or clone the repository into a directory in your `runtimepath` (e.g. `~/.vim/`): <ol><li>`cd ~/.vim/`</li><li>`curl -L https://github.com/phlo/vim-btor2/tarball/master \| tar xz --strip 1`</li></ol> |

## Configuration
**If you only care about the syntax highlighting** and don't need shortcuts for calling [boolector](https://github.com/Boolector/boolector), **you're done**.

Otherwise, you need to:
* have `boolector` and `btormc` in your `$PATH`, **or**
* set `g:btor2_boolector_command` and/or `g:btor2_btormc_command` in your `~/.vimrc` to the commands for calling `boolector` and `btormc` with arguments of your choice (e.g. `let g:btor2_boolector_command="boolector -m"`)

## FAQ
> Why does VIM  not show any syntax highlighting - neither for `*.btor2` files nor for others?

Most likely syntax highlighting is simply disabled.
You can enable syntax highlighting by typing `:syntax on` in VIM or adding `syntax on` to your `~/.vimrc` file.

> Why does the ending of a file, e.g. `*.btor2`, not affect the plugins loaded by VIM?

Make sure that you have filetype plugins enabled. See **|filetype-plugin-on|** for details, or simply add the following to your `~/.vimrc`:
```
filetype plugin on
```

## Contribute
You can always create an issue if you find bugs or think that something could be improved.
If you want to tackle an issue or contribute to the plugin feel free to create a pull request.
