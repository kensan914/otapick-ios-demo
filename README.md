# otapick-ios-demo

## 概要
自身が開発しているWebサービス「[ヲタピック](https://otapick.com)」のiOSデモアプリです([ヲタピックのメインリポジトリはこちら](https://github.com/kensan914/otapick))。
まず、ヲタピックの概要といたしまして、アイドル(櫻坂46・日向坂46・欅坂46)の画像を効率よく閲覧・保存ができるWebサービスになります。[ブログ一覧](https://otapick.com/blogs/1/)では、新着順でメンバーのブログが一覧表示され、最新のブログをチェックすることが可能です。

**今回は、そのブログ一覧機能をiOSアプリで実現します。**
ヲタピックAPIにブログをGETするリクエストを送信し一覧表示するクライアントアプリとなります。グループごとにタブで分割されているため自分の好きなグループで絞り込むことが可能です。

以下、デモプレイになります。


![otapick-ios-demo](https://user-images.githubusercontent.com/52157596/116464410-e9792400-a8a6-11eb-8b40-77b3382c69f7.gif)

## 仕様
- 櫻坂46・日向坂46・欅坂46、各グループ最新20件のブログをリスト表示
- リストの要素をタップすると各ブログの詳細ページに遷移
- リストの要素には「タイトル, 投稿日, 執筆メンバー」を表示
- 詳細ページには「タイトル, 投稿日, 執筆メンバー, ヲタピックリンク, 公式ブログリンク」を表示
- 知的財産権の関係上、ブログのサムネイルなどの画像、または本文は表示しない


## 課題
現状の仕様では各グループ最新20件しか表示できないため、無制限表示に対応する。無限スクロールを用いてリスト下部までスクロールしたら次ページをGETするような解決策が挙げられる。また、キーワードによる絞り込み・ソートなどの機能を追加し、ユーザが目当てのブログを探すという体験を提供する必要もある。