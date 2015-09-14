# Manual for Linux Mint Cinnamon

* editor http://markable.in/editor/
* theme http://idratherbewriting.com/documentation-theme-jekyll/
* book based on: http://alv.me/wp-content/lib/Alexey_Alv_Fedorchuk_Linux_Mint_i_ego_Cinnamon.html.zip

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

Then:

```bash
jekyll serve -H 0.0.0.0 - --force_polling
```

Config:

`_config.yml` -- config for jekyll

Installation:

http://idratherbewriting.com/documentation-theme-jekyll/doc_getting_started.html