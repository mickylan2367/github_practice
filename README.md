# github_practice
Githubの使い方の練習memo帳

## 参考資料
ぶっちゃけこの文章を読むよりこっち見てもらった方が早い
<ul>
  <li>
    <a href = "https://youtu.be/6SLMB7BPG9E">[Github入門]初心者向け！Githubでチーム開発するための基本操作を解説（Pythonプログラミング VTuber サプー）</a>
  </li>
</ul>

## 目次
  <ol>
    <li>概要</li>
    <li>筆者の現在の環境</li>
    <li>Github上でRepositoryを作成</li>
    <li>Github上のRepository（リモートリポジトリ）に初めて自分のPC(ローカルリポジトリ)にpushする</li>
    <li>参考資料</li>
  </ol>

## 筆者の現在の環境
VSCodeで既に作成したコードが手元にある。これをgithub上に作った自分のレポジトリに載せたり、削除したりする。
<br>gitはインストール、初期設定済み (git については<a href="https://youtu.be/6SLMB7BPG9E">この動画が分かりやすい</a>)

## Github上でRepositoryを作る
右上の+マークからNew Repositoryを選択し、Repositoryの名前とPabric/Privateを選択してレポジトリを作成する

## Github上のRepositoryに初めてローカルからpushする
  #### Github上で行うこと
  <ul>
    <li>
      アクセストークンをsetteings >> Developer Settings >> personal access tokens >> Tokens(classic)から取ってくる
      <br>Personal Access tokens が保存されていなければ、自分で作る
    </li>
  </ul>
  
  #### 自分のPCで行うこと
  <ol>
    <li>
      github上に載せたいファイル直下でgit initを実行する
      <br> git statusで現在のブランチの名前を確認する。
      <br> もしmasterだったら、"git branch -m main"とターミナルで実行してローカルレポジトリのメインブランチの名前をmainにしておくとよい。（名前を統一できるから） 
    </li>
    <li>
      必要に応じてgit status で状況を確認しながら、
      <br> git add . ：変更ありファイルをトラッキング
      <br> git commit -m "コミット名"：ファイルをコミットする（ブランチの状況を保存できるyo）
      <br> git logを実行して、コミットの履歴を見てちゃんとコミットできてるか確認する。
    </li>
    <li>
      git remote add <リモートリポジトリの名前><リモートリポジトリURL> : リモートリポジトリとローカルリポジトリを紐づける!
      <br> ex. git remote add origin https:micklan2367:Personal Access Token//github.com/mickylan2367/github_practice.git
      <br> Personal Access Token：Githubから取ったAccess tokenを入力する
      <br> user_name: 自分のアカウント名
    </li>
    <li>
      git push -u リポジトリ名 ローカルブランチ名：リモートブランチ名：リモートのブランチにローカルブランチをアップロード
      <br> ex. git push -u origin main:main
      <br> ＊ 1でブランチ名を変更していない場合、ローカルブランチ名がmasterの場合もあるので注意
      <br> ＊ローカルブランチ名とリモートブランチ名が同じ場合は、どちらか一方のみ書けばいい。
      <br> ex. git push -u origin main
      <br> 参考：Github公式リファレンスは<a href ="https://docs.github.com/ja/get-started/using-git/pushing-commits-to-a-remote-repository">こちら</a>
    </li>
  </ol>
