# win-cmd-toolbox

Windows 環境で使えるバッチコマンド集です。主に Windows 11 向けの設定変更やユーティリティスクリプトをまとめています。右クリックメニューの切り替えなど、GUI では手間な操作をワンタッチで行える `.cmd` ファイルを収録しています。

## 📁 ディレクトリ構成

- net/
  - check-ip.cmd
- win/
  - context-classic.cmd
  - context-default.cmd

## 🔧 各スクリプトの説明

### `win/context-classic.cmd`

Windows 11 のエクスプローラーで右クリックしたときのメニューを、Windows 10 スタイルのクラシック表示に変更します。

<!-- 実行ユーザのレジストリを更新します。 -->

### `win/context-default.cmd`

`win/context-classic.cmd` の変更を元に戻し、Windows 11 標準の右クリックメニューに復元します。

<!-- 実行ユーザのレジストリを更新します。 -->


### `net/check-ip.cmd`

ローカルIPアドレスとグローバルIPアドレスを表示します。

- グローバルIP取得にはインターネット接続が必要です。
