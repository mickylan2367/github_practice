# github_practice
Githubの使い方の練習memo帳（常に編集中( ´∀｀ )）

## 参考資料
ぶっちゃけこの文章を読むよりこっち見てもらった方が早い
<ul>
  <li>
    <a href = "https://youtu.be/6SLMB7BPG9E">[Github入門]初心者向け！Githubでチーム開発するための基本操作を解説（Pythonプログラミング VTuber サプー）</a>
  </li>
  <li>マークダウン記法について：<a href="https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax">githubのリファレンス</a></li>
  <li>マークダウンの記法について : <a href="https://qiita.com/Kotabrog/items/fb328b72ac94137897af#:~:text=%E8%89%B2%E3%80%85%E3%81%A8%E8%AA%BF%E3%81%B9%E3%81%9F%E7%B5%90%E6%9E%9C%E3%80%81%E3%81%93%E3%81%AE%E3%82%88%E3%81%86%E3%81%AA%E5%9F%BA%E7%A4%8E%E6%A7%8B%E6%88%90%E3%81%AB%E3%81%AA%E3%82%8A%E3%81%BE%E3%81%97%E3%81%9F%E3%80%82%20%23%20name%20image%20or%20gif%20%23%23%20Overview,Author%20%5Btwitter%5D%20%28https%3A%2F%2Ftwitter.com%2FKotabrog%29%20%23%23%20Licence%20%5BMIT%5D%20%28https%3A%2F%2F......%29%20%E5%BF%85%E8%A6%81%E3%81%8C%E3%81%82%E3%82%8C%E3%81%B0%E3%80%81%E3%81%93%E3%82%8C%E3%81%AB%E4%BB%98%E3%81%91%E5%8A%A0%E3%81%88%E3%81%A6%E3%81%84%E3%81%8F%E6%84%9F%E3%81%98%E3%81%A7%E3%81%99%E3%80%82">参考サイト（Qiita）</a></li>
</ul>

## 用語解説
<ul>
  <li>リモートリポジトリ：github上のコードが保存されているURL。</li>
  <li>ローカルリポジトリ：自分のPCで、コードが保存されている場所</li>
</ul>

## 目次
  <ol>
    <li>参考資料</li>
    <li>用語解説</li>
    <li>概要</li>
    <li>筆者の現在の環境</li>
    <li>リモートリポジトリを作成</li>
    <li>初めてローカルリポジトリの内容をリモートリポジトリにpushする</li>
    <li>参考資料</li>
  </ol>

## 概要
ざっくり流れはこんな感じ（あとで図を載せる）

## 筆者の現在の環境
VSCodeで既に作成したコードが手元にある。これをgithub上に作った自分のレポジトリに載せたり、削除したりする。
<br>gitはインストール、初期設定済み (git については<a href="https://youtu.be/6SLMB7BPG9E">この動画が分かりやすい</a>)

## Github上でRepositoryを作る
Githubサイト右上の+マークからNew Repositoryを選択し、Repositoryの名前とPubric/Privateを選択してレポジトリを作成する

## Github上のRepositoryに初めてローカルからpushする
  #### Github上で行うこと
  アクセストークンをGithubサイト上のsetteings >> Developer Settings >> personal access tokens >> Tokens(classic)から取ってくる
  <br> Personal Access tokens が保存されていなければ、自分で作る
  
  #### 自分のPCで行うこと
  1. ターミナル(コマンドプロンプト)を開き、github上に載せたいファイル直下で``` git init ```を実行する
     * ``` git status ``` で現在のブランチの名前を確認する。
     * ```git branch -m main```とターミナルで実行してローカルレポジトリのメインブランチの名前を確認する。
       <br> もし```On branch main```ではなく```On branch master```だったら、mainにしておくとよい。（名前を統一できるから）

  2. コミット（変更保存。ブランチに変更保存履歴ノードを作成）する。
     <br> 必要に応じて``` git status ```で状況を確認しながら、
     ```
       git add . ：変更ありファイルをトラッキング
       git commit -m "コミット名 "：ファイルをコミットする（ブランチの状況を保存できるyo）
       git log : コミットの履歴を見てちゃんとコミットできてるか確認
     ```
  4. ローカルPCとリモートURLの紐づけを行う
      * ``` git remote add リモートリポジトリURL ``` : リモートリポジトリとローカルリポジトリを紐づける!
      * 以下の例は、このリポジトリの場合。
        ```
        ex1. git remote add origin https:micklan2367:Personal Access Token//github.com/mickylan2367/github_practice.git``` (パーソナルアクセストークンを使用する場合)
        ex2. git remote add origin https://github.com/mickylan2367/github_practice.git （パーソナルアクセストークンを使用しない場合--こっちの方が簡単）
        ```
      * Personal Access Token：Githubから取ったAccess tokenを入力する
      * user_name: 自分のアカウント名
  
  ##### ここで発生したエラーが3個
  ###### エラー1個目
  ```
    fatal: Could not read from remote repository. 
    Please make sure you have the correct access rights and the repository exists.
  ```
  <ul>
    <li>対処：とりあえずアクセストークンを使用しないURLにリモートリポジトリを設定した</li>
    <li>参考：<a href="https://stacktuts.com/how-to-fix-git-error-please-make-sure-you-have-the-correct-access-rights-and-the-repository-exists">サイト</a></li>
  </ul>

  ###### エラー2個目
  ```
    ! [rejected]        main -> main (fetch first)
    error: failed to push some refs to 'https://github.com/mickylan2367/github_practice.git'
    hint: Updates were rejected because the remote contains work that you do
    hint: not have locally. This is usually caused by another repository pushin
    hint: to the same ref. You may want to first integrate the remote changed
    hint: (e.g., 'git pull ...') before pushing again.
    hint: See the 'Note about fast-forwards' in 'git push --help' for details.
  ```
  <ul>
    <li>内容：Readmeを編集しながらpushしてしまったので、「Readmeを編集中ですよね？そのファイルはローカルのmainブランチにないのでプッシュできないよ」と叱られた。</li>
    <li>対処：Readmeの編集をいったん中止して、git pull origin mainと打ってみた</li>
    <li>結果：そしたら、下のエラーメッセージが出てきた</li>
  </ul>

  ###### エラー3個目
  ```
    fatal: refusing to merge unrelated histories
  ```
  <ul>
    <li>内容：関連付けられていないブランチにはマージできない</li>
    <li>対処：git merge --allow-unrelated-histories origin/mainで、git pull(= fetch + merge)の二つの機能のうち、mergeのみ再度実行。</li>
    <li>参考：<a href="https://qiita.com/mei28/items/85bc881ac1f26332ac15">サイト</a></li>
  </ul>

  4. ``` git push -u リポジトリ名 ローカルブランチ名：リモートブランチ名```：リモートのブランチにローカルブランチをアップロード
      <br> ex. ``` git push -u origin main:main```
      <br> ＊ 1でブランチ名を変更していない場合、ローカルブランチ名がmasterの場合もあるので注意
      <br> ＊ローカルブランチ名とリモートブランチ名が同じ場合は、どちらか一方のみ書けばいい。
      <br> ex. ``` git push -u origin main ```
      <br> 参考：Github公式リファレンスは<a href ="https://docs.github.com/ja/get-started/using-git/pushing-commits-to-a-remote-repository">こちら</a>

## Tagの付け方(製品のバージョン管理みたいなことができるよ!
* ``` git tag -a タグ変数 -m 'タグの名称' ``` : タグに名前を付ける（```ex. git push origin v1.0```）
* ``` git push origin タグ変数 ```: タグをプッシュ（```ex. git push origin v1.0 ```）
* タグのネーミングは<a href="https://semver.org/lang/ja/">セマンティックなんちゃら</a>を参照するといいらしい？
* 参考：gitの<a href = " https://git-scm.com/book/en/v2/Git-Basics-Tagging">公式リファレンス</a>
* <a href = "https://qiita.com/tommy_aka_jps/items/5b39e4b27364c759aa53">Qiita</a>を参照
