# dump_darts

Darts (Double-ARray Trie System) データ構造のTrieの全単語をダンプするツール

別名：mkdarts した元の単語ファイルを失くしてしまった残念な人を救済するツール

## requirement

- [Darts 0.32](http://chasen.org/~taku/software/darts/) by Taku Kudo

実際に必要なのは`darts.h`だけです。

## install

`darts.h` が /usr/local/include にインストールされていることを前提としています。
そうでない場合は Makefile をいじってください。

`darts.h` にパッチをあてて使っています。

```
$ make dump_darts
$ sudo make install
```

## usage

```
$ dump_darts <darts-file>
```

## license

dump_darts はフリーソフトウェアです．LGPL(Lesser GNU General Public License) または BSD ライセンスに従って本ソフトウェアを使用,再配布することができます. 詳細は COPYING, LGPL, BSD各ファイルを参照して下さい．


## 開発動機

Dartsを[DAWG](http://dawg.readthedocs.org/en/latest/)で置き換えたかったのだけれど、mkdartsした元の単語ファイルを失くしてしまったのですよ

## author

- naoya_t

