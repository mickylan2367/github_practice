# github_practice
Githubの使い方の練習memo帳（常に編集中( ´∀｀ )）
<br> memo : 面倒くさかったので、Gitの基本操作（VSCode上でのgit操作も含む）は全て3. 概要で説明することにした(;'∀')

## 目次
  <ol>
    <li><a href="https://github.com/mickylan2367/github_practice/tree/main#参考資料">参考資料</a></li>
    <li><a href="https://github.com/mickylan2367/github_practice/tree/main#用語解説">用語解説</a></li>
    <li><a href="https://github.com/mickylan2367/github_practice/tree/main#概要">概要</a></li>
    <li><a href="https://github.com/mickylan2367/github_practice/tree/main#筆者の現在の環境">筆者の現在の環境</a></li>
    <li><a href="https://github.com/mickylan2367/github_practice/tree/main#Githubの見方">Githubの見方</a></li>
    <li><a href="https://github.com/mickylan2367/github_practice/tree/main#Github上でリモートリポジトリを作成し、初めてローカルからpushする">Github上でリモートリポジトリを作成し、初めてローカルからpushする</a></li>
    <li><a href="https://github.com/mickylan2367/github_practice/tree/main#タグの付け方">タグの付け方</a></li>
    <li><a href="https://github.com/mickylan2367/github_practice/tree/main#Issuesの使い方">Issuesの使い方</a></li>
    <li><a href="https://github.com/mickylan2367/github_practice/tree/main#Pull Requestの使い方">Pull Requestの使い方</a></li>
  </ol>

<br>

## 参考資料
ぶっちゃけこの文章を読むよりこっち見てもらった方が早い
<ul>
  <li>
    <a href = "https://youtu.be/6SLMB7BPG9E">[Github入門]初心者向け！Githubでチーム開発するための基本操作を解説（Pythonプログラミング VTuber サプー）</a>
  </li>
</ul>

#### 自分用
<ul>
  <li>マークダウン記法1：<a href="https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax">githubのリファレンス</a></li>
  <li>マークダウンの記法 2: <a href="https://qiita.com/Kotabrog/items/fb328b72ac94137897af#:~:text=%E8%89%B2%E3%80%85%E3%81%A8%E8%AA%BF%E3%81%B9%E3%81%9F%E7%B5%90%E6%9E%9C%E3%80%81%E3%81%93%E3%81%AE%E3%82%88%E3%81%86%E3%81%AA%E5%9F%BA%E7%A4%8E%E6%A7%8B%E6%88%90%E3%81%AB%E3%81%AA%E3%82%8A%E3%81%BE%E3%81%97%E3%81%9F%E3%80%82%20%23%20name%20image%20or%20gif%20%23%23%20Overview,Author%20%5Btwitter%5D%20%28https%3A%2F%2Ftwitter.com%2FKotabrog%29%20%23%23%20Licence%20%5BMIT%5D%20%28https%3A%2F%2F......%29%20%E5%BF%85%E8%A6%81%E3%81%8C%E3%81%82%E3%82%8C%E3%81%B0%E3%80%81%E3%81%93%E3%82%8C%E3%81%AB%E4%BB%98%E3%81%91%E5%8A%A0%E3%81%88%E3%81%A6%E3%81%84%E3%81%8F%E6%84%9F%E3%81%98%E3%81%A7%E3%81%99%E3%80%82">参考サイト（Qiita）</a></li>
   <li>マークダウンの記法 3: <a href="https://qiita.com/mozuku_com/items/db430bcb66fd1bbc5c49#7-mermaid%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6%E3%81%BF%E3%82%88%E3%81%86">参考サイト（Qiita）</a></li>
  <li>マークダウン画像サイズ調整：<a href = "https://shinshin86.hateblo.jp/entry/2021/09/12/084848#:~:text=image%20resize%20in%20github%20flavored%20markdown.%20%C2%B7%20GitHub,%3C%2Fp%3E%20%E2%80%BB%E3%81%A1%E3%81%AA%E3%81%BF%E3%81%AB%20p%20%E3%82%BF%E3%82%B0%E3%81%AB%E4%BB%98%E3%81%84%E3%81%A6%E3%81%84%E3%82%8B%20align%3D%22center%22%20%E3%81%AF%20text-align%3Acenter%3B%20%E3%81%A8%E5%90%8C%E3%81%98%E3%82%82%E3%81%AE%E3%80%82">参考サイト</a></li>
</ul>

<br>

## 用語解説
<ul>
  <li>リモートリポジトリ：github上のコードが保存されているURL。</li>
  <li>ローカルリポジトリ：自分のPCで、コードが保存されている場所</li>
  <li>ステージ：ローカルリポジトリで変更保存（コミット）する前に一時的に変更履歴を保存しておく場所</li>
  <li>ワークツリー：編集中のファイルツリー（ローカルPC上）</li>
  <li>コミット：コード変更保存履歴。公式リファレンスによると、変更されたコードだけを保存しているのではなく、すべてのコードをスクリーンショットしノードとして保存しているような感じ？らしい。</li>
  <li>ブランチ：機能別に編集したりするためにコード開発を分岐させることができる機能。</li>
  <li> remotes/develop ブランチ：製品を公開する前の開発中ブランチ</li>
  <li> remotes/origin/main ブランチ: 製品を公開しているリモートのメインブランチ。タグをつけてpushすると商品感が出る</li>
</ul>

<br>

## 概要
#### 開発の流れ
ざっくり流れはこんな感じ（あとで図を載せる）

#### Git コマンド解説(ターミナルで操作)
* ``` git add . ``` : ワークツリーからステージへ変更を一時保存
* ``` git commit -m "コミット名" ``` : ステージからローカルリポジトリへ変更を一時保存
* ``` git branch "ブランチ名" ``` : ブランチを作成
  * ``` git branch ``` : ローカルリポジトリに存在するブランチをすべて表示
  * ``` git branch -a ``` : リモートリポジトリ、ローカルリポジトリに存在するすべてのブランチを表示
  * ``` git checkout -b "ブランチ名" ``` : ブランチを作成してそのブランチへ切り替える
  * ``` git checkout "ブランチ名" ```: 指定したブランチに切り替える
  * ``` git branch -d "ブランチ名"　```：指定したブランチを削除
* ``` git pull ``` : 以下で紹介するfetchとmergeを一緒に行う。コンフリクトが起きているときはエラーが出ます。
  * ``` git fetch [<options>] [<repository> [<refspec>…]] ```: repositoryで指定されたリポジトリから、ブランチやタグの情報を収集する。
    <br> ex. ``` git fetch origin main ``` : remote/origin/mainからブランチやタグの情報を収集。
  * ``` git merge [<options>][<repository> branch_name ] ```:ブランチを統合して一つにする。
    <br> ex. ``` git merge origin main ```
    <br> ``` git merge ```して使い終わったブランチは```git branch -d "ブランチ名"```で消すか、Github上の```pull requests```から```Delete Branch```で消す。
* ``` git push ``` : ローカルリポジトリにあるブランチからリモートリポジトリにあるブランチへ、コードを同期する。

<br>

#### Github + VSCodeでGitを操作する場合
ここまで色々書いたけど、ここからは一々コマンド全部自分で実行するのはめんどくさいよ(´;ω;｀)って方向けに。


<br>

#### Git Graph
* VSCode上でGit Graphをインストールすると、綺麗なブランチとコミットの履歴を見ることができる。ただし、gitの操作した結果の反映には多少時間がかかる模様。
* Git Graphは以下の場所から表示できる。
  <ol>
    <li> 
      左のタスクバーからSource Controlを選択。
      <p align="left">
      <img src="https://github.com/mickylan2367/github_practice/assets/83509964/1d973dfd-4644-4cf9-9b9c-99c5b7a6bdf8" width="90px">
      </p>
    </li>
    <li>
      上段右から2番目の変なマークを選択。
      <p align="left">
      <img src="https://github.com/mickylan2367/github_practice/assets/83509964/bef0984c-e27d-4fea-97b7-fd6756327973" width="200px">
      </p>
    </li>
    <li>
      <br> Git Graphが表示される。
      <p align="left">
      <img src="https://github.com/mickylan2367/github_practice/assets/83509964/daeaccd5-9152-42b2-9d89-671f7abc074f" height="400px">
      </p>
    </li>
  </ol>
* 上の図のノード(点)がコミットの履歴で、縦の棒が各ブランチ。この図では分岐していたブランチがいったんピンクのブランチ(remotes/develop)に統合され、最終的に青のブランチ(remotes/origin/main)に統合されていく様子を示している。

#### ターミナルでブランチを確認する方法
  gitで管理されているファイル直下に移動し、ターミナルで``` git branch -a ```と打つ。
  <br> 現在位置は、先頭に※が付いている + 緑で表示される。下の図の場合はmainブランチにいることが分かる。
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/b5b0a5d2-8e02-474b-b747-1dcd6af19c73" height="300px">
  </p>
  
  <br> 因みに、``` git branch ```とだけ打つとローカルリポジトリ（自分のPC）に存在しているブランチ（上の図だと、頭にremotes/originと表記されていないブランチ。）だけが表示される。

<br>

## 筆者の現在の環境
VSCodeで既に作成したコードが手元にある。これをgithub上に作った自分のレポジトリに載せたり、削除したりする。
<br>gitはインストール、初期設定済み (git については<a href="https://youtu.be/6SLMB7BPG9E">この動画</a>が分かりやすい)
<br>また、VSCode上でgithubにログイン済み。サインインしているかはVSCodeの「アカウント」で確認できる。
<p align="center">
<img src="https://github.com/mickylan2367/github_practice/assets/83509964/9f829233-9e30-4c6f-b4bd-c47c452e0983" height="200px">
</p>

<br>


## Githubの見方
<p align="center">
<img src="https://github.com/mickylan2367/github_practice/assets/83509964/16990050-d72e-4347-bac6-47c9c9e49038" width="800px">
</p>

* 左上の``` main ```はremote/origin/mainブランチにコミットされたプログラムを表示していることを示す。
  <br> ブランチごとに選択してコードを確認できる
* ファイル名、そのファイルが変更された最新のコミット名、コミット時刻の順番で並んでいる
* コミット名をクリックすると、コミットの変更点を確認できる。
  <br> 下の図の緑の領域(+)は、このコミットによって追加されたコードを示す。
  <br>
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/12243b75-c76f-4ca7-92b8-921d875f6fce" height="400px">
  </p>
* ファイル名をクリックし、History（右端）をクリックすると、そのファイルで行われたコミットの履歴が表示される。
  <br> コミット名をクリックすると、上記同様にコミットの変更したコードを確認できる
  ![image](https://github.com/mickylan2367/github_practice/assets/83509964/5e25a1ad-3316-4eb4-a566-b297eb9b65d3)

#### 他の機能
![image](https://github.com/mickylan2367/github_practice/assets/83509964/c007689b-012a-417c-a561-fb2b0c28cd78)
* <>Code: さっき説明した場所。ファイルやブランチ、コミット履歴が確認できる
* ☉Issues：非同期でチーム開発中に課題を見つけたら、ここに課題を書いて誰が解決するか担当を割り当てる。
  <br> ブランチを作成してコードを編集する。
* Pull Requests: 開発したブランチをdevelopにマージする。コンフリクトが生じたらこれを解消する。
* 参考：
  <br> pullについて1: <a href="https://qiita.com/ryosakamoto39/items/6f69d90da26051faaf18">参考サイト</a>
  <br> pullについて2: <a href="https://denno-sekai.com/github-pullrequests/">参考サイト</a>

<br>

## Github上でRemote Repositoryを作成し、初めてローカルからpushする（初回のみ）
  #### Github上で行うこと
  * Githubサイト右上の+マークからNew Repositoryを選択し、Repositoryの名前とPubric/Privateを選択してレポジトリを作成する
  * アクセストークンをGithubサイト上のsetteings >> Developer Settings >> personal access tokens >> Tokens(classic)から取ってくる
    <br> Personal Access tokens が保存されていなければ、自分で作る
  
  #### 自分のPCで行うこと
  1. ターミナル(コマンドプロンプト)を開き、github上に載せたいファイル直下で``` git init ```を実行する
     * ```git branch```とターミナルで実行してローカルレポジトリのメインブランチの名前を確認する。
       <br> もし```On branch main```ではなく```On branch master```だったら、mainにしておくとよい。（名前を統一できるから）

  2. コミットする。
     <br> 必要に応じて``` git status ```で状況を確認しながら、
     ```
       git add . ：変更をステージに一時保存
       git commit -m "コミット名 "：ファイルをコミットする。ステージからローカルリポジトリに変更履歴を保存
       git log : コミットの履歴を見てちゃんとコミットできてるか確認
     ```
     * ちなみに、```git status ```<<``` git add . ``` <<``` git status ```の順でコマンドを実行すると、``` git add .```を実行する前には``` Changes not staged for commit ```と赤で表示されていたファイルが、実行後には``` Changes to be commited ```として緑で表示されていることが分かる。これはファイルがstageに一時保存されていることを示している。
       <br> ![image](https://github.com/mickylan2367/github_practice/assets/83509964/25986d22-2254-4016-8652-5a17dfcb1105)
       <br> ![image](https://github.com/mickylan2367/github_practice/assets/83509964/0149c17b-fd5f-4bc5-b02c-1d8c7f92b079)

     #### git addや上書き保存で保存してしまった後に、コードを元に戻したい場合。
      * 一度```git add . ```でワークツリーからステージに保存してしまったり、コミットしちゃったけど元に戻したいよというときは```git restore```を使用する。
      * 例：ステージに上げる前、上書き保存しただけの段階でファイルを元に戻したいとき
          <ol>
          <li>
            ファイルの内容を変更して、上書き保存（Ctrl + S）。
            <p align="center">
              <img src="https://github.com/mickylan2367/github_practice/assets/83509964/53886088-8127-4b86-9d89-3b4104104331" width="400px">
            </p>
          </li>
          <li>
            git statusとターミナルで打つと、上書き保存しても変更内容はまだステージには上がっていないことが分かる。
             <p align="center">
              <img src="https://github.com/mickylan2367/github_practice/assets/83509964/d1231661-4f57-4bf1-a428-fba080157589" width="800px">
            </p>
          </li>
          <li>
            この変更を取り消すには、git restore <ファイル名>をターミナルで実行。すると、上書き保存前に戻れます。
             <p align="center">
              <img src="https://github.com/mickylan2367/github_practice/assets/83509964/bf8d976f-7139-4011-a883-99a02154158e" width="800px">
            </p>
          </li>
        </ol>    
      * 例：ステージに保存後、コミットする前にファイルを元に戻したいとき
        <ol>
          <li>
            ファイルの内容を変更して、git addした後git statusでステージの状態を確認すると
            <p align="center">
              <img src="https://github.com/mickylan2367/github_practice/assets/83509964/5a057522-d4bc-4438-a1c7-ef5eba85e000" width="800px">
            </p>
          </li>
          <li>
            この変更を取り消すには、一度--stagedで保存状態をstageからワークツリーに戻して、再度ワークツリーでの変更を消す
             <p align="center">
              <img src="https://github.com/mickylan2367/github_practice/assets/83509964/1fb3725f-594d-4fe0-b84b-641610fb36e3" width="800px">
            </p>
          </li>
        </ol>
        
  4. ローカルPCとリモートURLの紐づけを行う
      * ``` git remote add リモートリポジトリURL ``` : リモートリポジトリとローカルリポジトリを紐づける!
      * 以下の例は、このリポジトリの場合。
        ```
        ex1. git remote add origin https:<user_name>:<Personal Access Token>@github.com/mickylan2367/github_practice.git (パーソナルアクセストークンを使用する場合)
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

<br>

## Tagの付け方(製品のバージョン管理みたいなことができるよ!)
* ``` git tag -a タグ変数 -m 'タグの名称' ``` : タグに名前を付ける（```ex. git tag -a v1.0 -m 'v1.0.0'```）
* ``` git push origin タグ変数 ```: タグをプッシュ（```ex. git push origin v1.0 ```）
* タグのネーミングは<a href="https://semver.org/lang/ja/">セマンティックなんちゃら</a>を参照するといいらしい？

参考：
* gitの <a href="https://git-scm.com/book/en/v2/Git-Basics-Tagging">公式リファレンス</a>
* <a href = "https://qiita.com/tommy_aka_jps/items/5b39e4b27364c759aa53">Qiita</a>を参照

<br>

## チーム開発のIssuesの使い方
* ここでは、Issueを立ててブランチの作成し、VScode上で編集したファイルをコミットしてリモートリポジトリの同じ名前のブランチへpushするところまでを行う。
##### ちょっとここで図解したほうが分かりやすいかも？
* Issuesは非同期でみんなが編集しているとき、課題の割り当て、ブランチの作成を行う。
1. Issues >> ``` New Issues(黄緑のボタン) ``` を選択
2. Issuesのタイトルと内容詳細を書いて``` Submit new issue ```を選択 
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/99adf234-5c39-4bda-8c85-e9443e10f1d5" alt="AssigneesとDevelopment" width="600px">
</p>

4. 同ページ右の```Assignees```でこのIssueを解決する人を割り当てる。（ここでは、とりあえず```assign youself```を選択している）
5. ```Assignees```と同じ列下にある```Development```から```Create a branch```を選択
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/a4b18b90-1716-45e9-8ea9-7891a6b8a5b0" alt="AssigneesとDevelopment" width="400px">
</p>

6. ブランチ名を編集して```Create Branch```を選択
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/8f61baee-506e-4170-9e20-14c431407729" alt="AssigneesとDevelopment" width="400px">
</p>

7. 下のようなポップアップ画面が出てくるので、コードをコピーします。
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/8812217c-2d36-4147-a0c7-10d667707b91" alt="AssigneesとDevelopment" width="700px">
</p>

8. VSCodeに戻りターミナルを開き、先ほどコピーしたコードを実行
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/eddcad72-3f28-41f6-bdbd-bf32e4dd6f1b" alt="AssigneesとDevelopment" width="700px">
</p>

9. ブランチ上でファイルを編集します。
  <br> 注意：次の手順は10（ターミナルでコマンドを直接打つ）か11（VSCodeの機能を使用）のどちらかを選択してねb
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/eddcad72-3f28-41f6-bdbd-bf32e4dd6f1b" alt="AssigneesとDevelopment" width="700px">
  </p>
10. （11を行う場合は不要）ターミナル上でコマンドを打ってコミットする場合は、以下のように実行します
  <br> コミットメッセージの名前の付け方はルールがあると便利。<a href="https://www.tam-tam.co.jp/tipsnote/program/post16686.html">参考サイト</a>
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/0de28e30-51cd-4b8d-ac9a-5758b236affe" alt="AssigneesとDevelopment" width="700px">
  </p>

11. （10を行った場合は不要）VSCode上のSource Controlを開き、```Changes```と書かれた場所のファイル名の横の```+```を選択する。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/7b2f2925-23f0-4308-a4d6-0ab533b7d4bc" height="150px">
    </p>
    
    - 変更ファイルを```git add```する。ぶっちゃけこの手順は省いても（後で下のような警告は出てくるけど）OK
      <br> 下の警告文の意味：「addせずにコミットしようとしているけど、変更ファイル全部ステージに上げて(```git add .```することと同じ。)からコミットしちゃってOKですか？」
       <p align="center">
      <img src="https://github.com/mickylan2367/github_practice/assets/83509964/42c011d1-7d19-4f6f-aaf9-8318594fbc3d" height="150px">
      </p>

    - その後、コミットメッセージ(ここでは「Add : 花を追加」としている。)を記入して```☑Commit```を選択。
      <br> コミットメッセージの付け方に注意しよう（詳しくは10の参考サイトをチェック）
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/6ce60e75-adf1-466e-9f9b-83d2cef6b406" height="150px">
    </p>
    
    - コミットメッセージを記入せずに```☑Commit```ボタンを押してしまうと、以下のようなファイルが開いてコミットできない。
      <br> この場合はコミットメッセージを記入してからもう一度コミットボタンを押す。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/9713f8f8-89d6-4d81-ad87-5efe2e380fc7" height="200px">
    </p>

12. (11の続き。10を行った人は飛ばしてください) コミットが行われると下のような画面に代わるので、``` Sync Changes ```を選択する。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/016c4e1b-5272-4ee2-9d0d-e66466df9540" height="150px">
    </p>
    
    - ポップアップ画面で表示される```OK```ボタンを押すと、ローカルリポジトリで編集中のブランチから、<b>リモートブランチにある同じ名前のブランチ</b>にプッシュされます。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/44d28c8c-9c9e-4de9-8dbc-8a6f03c36188" height="120px">
    </p>


<br>
<br>

## Pull Requestの使い方
  * 前章ではIssueの使い方についてみてきけど、今度はその続きとしてPull Requestsの使い方を説明する。
  * 基本的にPull Requestは航海されているプログラムでバグを発見した際、他の人が修正したコードを```remote/origin/main```や```remote/origin/develop```にマージする前に正常に動くコードしてマージできるかを確認するための機能。
  * pythonのライブラリのコードも公開されていて、バグを見つけたらユーザがIssue/Pull Requestsを通してプログラムのバグを報告・修正・加筆することができる。

13. Githubに戻ってpull request上を確認すると、マージされたブランチごとにポップアップが表示されている。
    <br> ```Compare & pull request```を選択する。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/4687deea-4f8e-40b1-a37d-914c55f86a27" width="800px">
    </p>

14. マージ先のブランチ(```base:```)とマージするブランチ(```compare:```)を選択する。マージできる場合はブランチ選択場所の右に```Able to merge```を緑で表示される。
    <br> ```Merge pull request```を選択。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/033b9794-1590-4575-9b71-ae5ed1f9a603" width="800px">
    </p>

    - マージできない場合は同じ場所に```Can't automecally merge.```と赤で表示される。
      <br> このように表示された場合は上記同様```Merge pull request```を選択した後、手順18へ飛んでください。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/591f4cd8-6479-4410-abd6-881513debaf3" width="800px">
    </p>

16. マージできる場合は適宜コミット名を編集し、```Confirm merge```を選択
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/80f8ad05-cfd6-43f9-9922-1adb03390275" height="200px">
    </p>

17. 必要なくなったブランチは削除するため、```Delete Branch```を選択する。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/fe6d0fee-4794-458a-8c82-e7c336c4d032" width="800px">
    </p>

18. 解決し終わったIssuesは閉じておく。(Issuesに戻って```close issues```を選択)
    <br> とりあえずこれで一通り編集修了！お疲れ様です。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/430e3e56-49de-4a02-9dd9-82a0088438f0" height="400px">
    </p>

20. 手順14でマージできないと表示された場合、コンフリクトを解消する必要があります。下の画面から```web editor```を選択
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/7118b28f-9ab6-42ae-bebc-6e3bd2d5fd57" width="700px">
    </p>

21. どこでコンフリクトが起きているかを表示してくれるので、コードを修正
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/ed5383b9-2ad1-4bd2-842d-4db3271c1fc1" width="600px">
    </p>

22. 編集し終わったら```Marked as resoled```を選択。編集結果がマージできそうなら下の画面のように、```Commit merge```と表示されるのでこれを選択
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/82cb7d02-1b66-4c98-95bf-b59b09828a4d" width="600px">
    </p>

23. コンフリクトが解消できて下の画面のように```Merge Pull Request```が表示されたら、手順15-18へ戻ります。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/06d4689f-d8b3-4579-9838-5ef545bfd547" width="600px">
    </p>
