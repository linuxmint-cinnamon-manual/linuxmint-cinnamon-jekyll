# Manual for Linux Mint Cinnamon

Online: http://linuxmint-cinnamon-manual.github.io/

* theme http://idratherbewriting.com/documentation-theme-jekyll/
* book based on: http://alv.me/wp-content/lib/Alexey_Alv_Fedorchuk_Linux_Mint_i_ego_Cinnamon.html.zip


Russian 17.1 version:

* https://github.com/linuxmint-cinnamon-manual/linuxmint-cinnamon-ru/tree/17-1-Rebecca

In `source` folder html source for `markdown`.

`index.md`, `01_about_book.md`, etc - generated from `html` source.

Workflow:

Source: source/Alexey_Alv_Fedorchuk_Linux_Mint_i_ego_Cinnamon.html

Then:

source/00_annotation.html
source/01_about_book.html
source/02_linux_mint_into.html
source/03_cinnamon_intro.html
...

Then:

index.md
01_about_book.md
02_linux_mint_into.md
03_cinnamon_intro.md
...

Then (for Vagrant/shared folder):

```bash
jekyll serve -H 0.0.0.0 - --force_polling
```

Open generated: http://0.0.0.0:4003/

Config:

`_config.yml` -- config for jekyll

Installation:

http://idratherbewriting.com/documentation-theme-jekyll/doc_getting_started.html

Html to markdown (ruby's gem):

    gem install reverse_markdown

Then:

    cd source/
    reverse_markdown 10_mint_utils.html > md/10_mint_utils.md

Tips:

Edit MarkDown file in Gedit.

Disable `Ctrl+D` (what delete line), in `~/.gtkrc-2.0`:

```
binding "override-ctrl-d" {
    unbind "<ctrl>d"
}
class "GeditView" binding :highest "override-ctrl-d"
```