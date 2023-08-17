# github_practice
Githubの使い方の練習memo帳（常に編集中( ´∀｀ )）
- memo : 面倒くさかったので、Gitの基本操作（VSCode上でのgit操作も含む）は全て<a href="https://github.com/mickylan2367/github_practice/tree/main#概要">概要</a>で説名しています(;'∀')
- 注意：GitとGithubの練習のために作ったものなので、このコードには特に意味はなく実行してもエラーを吐くと思います

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
    <li><a href="https://github.com/mickylan2367/github_practice/tree/main#下層フォルダの矢印問題">下層フォルダの矢印問題</a></li>
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
<p align="center">
<img src="https://github.com/mickylan2367/github_practice/assets/83509964/01a2eaf6-2d1b-430c-ab01-ff494cc04302" width="800px">
</p>
<ul>
  <li>ローカルリポジトリ：自分のPCで、コードが保存されている場所</li>
  <li>ステージ：ローカルリポジトリで変更保存（コミット）する前に一時的にファイルの変更を保存しておく場所</li>
  <li>ワークツリー：編集中のファイルツリー（ローカルPC上）</li>
  <li>コミット：コード変更保存ノード。公式リファレンスによると、変更されたコードだけを保存しているのではなく、すべてのコードをスクリーンショットしノードとして保存しているような感じ？らしい。</li>
   <li>リモートリポジトリ：github上のコードが保存されているURL。</li>
  
  * 下の図は、リモートリポジトリとローカルリポジトリの関係を示したもの。
    <br> Githubでは、Gitで管理されているファイルをみんなで編集する。
  * はじめてリモートリポジトリからローカルリポジトリにファイルをコピー(クローンする、という。)する場合は```git clone URL```とコマンドを実行する。
    （git cloneを行うとローカルリポジトリが作成され、Github上のリモートリポジトリと自分のパソコンのローカルリポジトリが紐づけされる。）
  <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/a17c7cf2-cc49-4a37-948a-9fa87a9785b5" width="800px">
  </p>
  <br>
  
  <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/b332a8a5-e23c-4bbf-82ba-cf79c1fb10d0" width="800px">
  </p>
  <li>ブランチ：機能別にコードを編集したりするために開発工程を分岐させることができる機能。</li>
  <li> remotes/develop ブランチ：製品を公開する前の開発中ブランチ</li>
  <li> remotes/origin/main ブランチ: 製品を公開しているリモートのメインブランチ。タグをつけてpushすると商品感が出る</li>
</ul>

<br>

## 概要
#### 開発の流れ
ざっくり流れはこんな感じ（あとで図を載せる）

#### Git コマンド解説(ターミナルで操作)
* ``` git add . ``` : ワークツリーからステージへ変更を一時保存
* ``` git commit -m コミット名 ``` : ステージからローカルリポジトリへ変更を一時保存
* ``` git restore ファイル名``` : ワークツリーから指定したファイルの変更を取り消す。
* ``` git restore --staged ファイル名``` : ステージ上から指定したファイルの変更を取り消す。
* ``` git branch ブランチ名 ``` : ブランチを作成
  * ``` git branch ``` : ローカルリポジトリに存在するブランチをすべて表示
  * ``` git branch -a ``` : リモートリポジトリ、ローカルリポジトリに存在するすべてのブランチを表示
  * ``` git checkout -b ブランチ名 ``` : ブランチを作成してそのブランチへ切り替える
  * ``` git checkout ブランチ名 ```: 指定したブランチに切り替える
  * ``` git branch -d ブランチ名　```：指定したブランチを削除
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
* VSCode上のExtentionからGit Graphをインストールすると、綺麗なブランチとコミットの履歴を見ることができる。ただし、gitの操作した結果の反映には多少時間がかかる模様。
* Git Graphは以下の場所から表示できる。
  <ol>
    <li> 
      左のタスクバーからSource Controlを選択。
      <p align="left">
      <img src="https://github.com/mickylan2367/github_practice/assets/83509964/4cbd0768-fc0a-49b0-82dd-a66c0efe29f4" height="80px">
      </p>
    </li>
    <li>
      上段右から2番目の変なマークを選択。
      <p align="left">
      <img src="https://github.com/mickylan2367/github_practice/assets/83509964/ef9b2af5-3436-4d09-999c-dde1e2d601af" height="80px">
      </p>
    </li>
    <li>
      <br> Git Graphが表示される。
      <p align="left">
      <img src="https://github.com/mickylan2367/github_practice/assets/83509964/cb2cb721-b5aa-472c-8655-b0ed3a96e410" height="300px">
      </p>
    </li>
  </ol>
* 上の図のノード(点)がコミットの履歴で、縦の棒が各ブランチ。この図では分岐していたブランチがいったん黄緑のブランチ(remotes/develop)に統合され、最終的に青のブランチ(remotes/origin/main)に統合されていく様子を示している。

<!--ここから-->

#### ターミナルでブランチを確認する方法
  gitで管理されているファイル直下に移動し、ターミナルで``` git branch -a ```と打つ。
  <br> 現在位置は、先頭に※が付いている + 緑で表示される。下の図の場合はmainブランチにいることが分かる。
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/1bf0b417-14f1-46d3-a246-4d2e2a8c15a4" height="300px">
  </p>
  
  <br> 因みに、``` git branch ```とだけ打つとローカルリポジトリ（自分のPC）に存在しているブランチ（上の図だと、頭にremotes/originと表記されていないブランチ。）だけが表示される。

<br>

## 筆者の現在の環境
VSCodeで既に作成したコードが手元にある。これをgithub上に作った自分のレポジトリに載せたり、削除したりする。
<br>gitはインストール、初期設定済み (git については<a href="https://youtu.be/6SLMB7BPG9E">この動画</a>が分かりやすい)
<br>また、VSCode上でgithubにログイン済み。サインインしているかはVSCodeの「アカウント」で確認できる。
<p align="center">
<img src="https://github.com/mickylan2367/github_practice/assets/83509964/78d8837c-cebf-4c0f-9423-cb98f23312a1" height="200px">
</p>

<br>


## Githubの見方
<p align="center">
<img src="https://github.com/mickylan2367/github_practice/assets/83509964/180a9a35-4290-42ee-9c44-4f20e9bdfb9d" width="800px">
</p>

* 左上の``` main ```はremote/origin/mainブランチにコミットされたプログラムを表示していることを示す。
  <br> ブランチごとに選択してコードを確認できる
* ファイル名、そのファイルが変更された最新のコミット名、コミット時刻の順番で並んでいる
* コミット名をクリックすると、コミットの変更点を確認できる。
  <br> 下の図の緑の領域(+)は、このコミットによって追加されたコードを示す。
  <br>
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/c924b3db-75d9-409c-984f-d3c95581488a) height="400px">
  </p>
* ファイル名をクリックし、History（右端）をクリックすると、そのファイルで行われたコミットの履歴が表示される。
  <br> コミット名をクリックすると、上記同様にコミットの変更したコードを確認できる
  ![image](https://github.com/mickylan2367/github_practice/assets/83509964/7ef2ec89-347c-4359-904f-6c27a55b76a8)

#### 他の機能
![image](https://github.com/mickylan2367/github_practice/assets/83509964/8a5ed7ad-37ff-430b-86aa-0b598244e177)
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
       * もし```On branch main```ではなく```On branch master```だったら、mainにしておくとよい。（名前を統一できるから）
       * ``` git branch -m 変更するブランチ名 変更後のブランチ名 ```でブランチ名を変更する
         * ex. ``` git branch -m master main ```

  2. コミットする。
     <br> 必要に応じて``` git status ```で状況を確認しながら、
     ```
       git add . ：変更をステージに一時保存
       git commit -m "コミット名 "：ファイルをコミットする。ステージからローカルリポジトリに変更履歴を保存
       git log : コミットの履歴を見てちゃんとコミットできてるか確認
     ```
     * ちなみに、```git status ```<<``` git add . ``` <<``` git status ```の順でコマンドを実行すると、``` git add .```を実行する前には``` Changes not staged for commit ```と赤で表示されていたファイルが、実行後には``` Changes to be commited ```として緑で表示されていることが分かる。これはファイルがstageに一時保存されていることを示している.
       <p align="center">
          <img src="https://github.com/mickylan2367/github_practice/assets/83509964/919cb9a3-bc4b-4adc-a372-5c7b65773ae0" width="700px">
        </p>

     #### git addや上書き保存で保存してしまった後に、コードを元に戻したい場合。
      * 一度```git add . ```でワークツリーからステージに保存してしまったり、コミットしちゃったけど元に戻したいよというときは```git restore```を使用する。
      * 例：ステージに上げる前、上書き保存しただけの段階でファイルを元に戻したいとき
          <ol>
          <li>
            ファイルの内容を変更して、上書き保存（Ctrl + S）。
            <p align="center">
              <img src="https://github.com/mickylan2367/github_practice/assets/83509964/00407229-3ebb-4f4d-afe7-005d3c5d25aa" width="400px">
            </p>
          </li>
          <li>
            git statusとターミナルで打つと、上書き保存しても変更内容はまだステージには上がっていないことが分かる。
             <p align="center">
              <img src="https://github.com/mickylan2367/github_practice/assets/83509964/495eb59a-4349-403d-8c50-8756b374ab44" width="800px">
            </p>
          </li>
          <li>
            この変更を取り消すには、git restore <ファイル名>をターミナルで実行。すると、上書き保存前に戻れます。
             <p align="center">
              <img src="https://github.com/mickylan2367/github_practice/assets/83509964/7ddca0e1-8b8a-417b-a31f-1dfa6fcb0972" width="800px">
            </p>
          </li>
        </ol>    
      * 例：ステージに保存後、コミットする前にファイルを元に戻したいとき
        <ol>
          <li>
            ファイルの内容を変更して、git addした後git statusでステージの状態を確認すると
            <p align="center">
              <img src="(https://github.com/mickylan2367/github_practice/assets/83509964/2906e746-3007-41a6-96b2-42c276f8f4e3" width="800px">
            </p>
          </li>
          <li>
            この変更を取り消すには、一度--stagedで保存状態をstageからワークツリーに戻して、再度ワークツリーでの変更を消す
             <p align="center">
              <img src="https://github.com/mickylan2367/github_practice/assets/83509964/6cb6368b-8b00-40e1-880e-fa84e8f4040d" width="800px">
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

  5. フェッチとマージを行う。
     * ```git fetch```でリモートリポジトリの情報を取り込む
     * ```git merge --allow-unrelated-histories origin/main```を実行して、関連付けられていないブランチ同士をマージする。
  
  6. プッシュする。
     * ```git push origin main```など。
  
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
    <li>対処：git fetchのあと、git merge --allow-unrelated-histories origin/mainを実行。git pull(= fetch + merge)の二つの機能のうち、mergeのみ再度実行。</li>
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

## Issuesの使い方
* ここでは、Issueを立ててブランチの作成し、VScode上で編集したファイルをコミットしてリモートリポジトリの同じ名前のブランチへpushするところまでを行う。
  <!--ちょっとここで図解したほうが分かりやすいかも？-->
* Issuesは非同期でみんなが編集しているとき、課題の割り当て、ブランチの作成を行う。
#### 1. Issues >> ``` New Issues(黄緑のボタン) ``` を選択
#### 2. Issuesのタイトルと内容詳細を書いて``` Submit new issue ```を選択 
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/b436ae3d-c275-4d52-9202-7ad5fd0a1e98" alt="AssigneesとDevelopment" width="600px">
</p>

#### 3. 同ページ右の```Assignees```でこのIssueを解決する人を割り当てる。（ここでは、とりあえず```assign youself```を選択している）
#### 4. ```Assignees```と同じ列下にある```Development```から```Create a branch```を選択
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/cd9e803c-93f4-4b2f-a953-62ef80b9c9e9" alt="AssigneesとDevelopment" width="400px">
</p>

#### 5. ブランチ名を編集して```Create Branch```を選択
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/1632bec0-9c6e-4691-92ac-c36ae3e59be9" alt="AssigneesとDevelopment" width="400px">
</p>

#### 6. 下のようなポップアップ画面が出てくるので、コードをコピーします。
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/5c816d2b-acd6-4ceb-9765-36b8c5476c57" alt="AssigneesとDevelopment" width="500px">
</p>

#### 7. VSCodeに戻りターミナルを開き、先ほどコピーしたコードを実行
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/992f848c-49f5-48a8-be3c-3769bf4b34d0" alt="AssigneesとDevelopment" width="700px">
</p>

#### 8. ブランチ上でファイルを編集、Ctrl + Sで上書き保存します
  <br> 注意：次の手順は10（ターミナルでコマンドを直接打つ）か11（VSCodeの機能を使用）のどちらかを選択してねb
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/cabfc3c9-c88c-42b6-88a4-96ab206acd20" alt="AssigneesとDevelopment" width="700px">
  </p>

#### 9. （10を行う場合は不要）ターミナル上でコマンドを打ってコミットする場合は、以下のように実行します
  <br> コミットメッセージの名前の付け方はルールがあると便利。<a href="https://www.tam-tam.co.jp/tipsnote/program/post16686.html">参考サイト</a>
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/4a997d3e-60c1-405d-8b40-df430af80e40" alt="AssigneesとDevelopment" width="700px">
  </p>

#### 10. （9を行った場合は不要）VSCode上のSource Controlを開き、```Changes```と書かれた場所のファイル名の横の```+```を選択する。
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/13400358-4f45-4749-a327-1e3272fdece8" height="150px">
  </p>
  
  - 変更ファイルを```git add```する。ぶっちゃけこの手順は省いても（後で下のような警告は出てくるけど）OK
    <br> 下の警告文の意味：「addせずにコミットしようとしているけど、変更ファイル全部ステージに上げて(```git add .```することと同じ。)からコミットしちゃってOKですか？」
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/0e2489d0-e12c-45a8-891a-49544d583581" height="150px">
    </p>

  - その後、コミットメッセージ(ここでは「Add : 花を追加」としている。)を記入して```☑Commit```を選択。
    <br> コミットメッセージの付け方に注意しよう（詳しくは10の参考サイトをチェック）
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/bf369c34-d157-4f78-9235-4008dda12e37" height="150px">
    </p>
    
  - コミットメッセージを記入せずに```☑Commit```ボタンを押してしまうと、以下のようなファイルが開いてコミットできない。
    <br> この場合はコミットメッセージを記入してからもう一度コミットボタンを押す。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/13c8ec81-f828-49df-8954-261a843f2247" height="200px">
    </p>

#### 11. (10の続き。10を行った人は飛ばしてください) コミットが行われると下のような画面に代わるので、``` Sync Changes ```を選択する。
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/a8078c89-cff1-4c15-aad5-3746d9205dcc" height="150px">
  </p>
    
  - ポップアップ画面で表示される```OK```ボタンを押すと、ローカルリポジトリで編集中のブランチから、<b>リモートブランチにある同じ名前のブランチ</b>にプッシュされます。
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/7b41bb23-705b-41b1-bca9-f8337f6c6455" height="120px">
  </p>


<br>
<br>

## Pull Requestの使い方
  * 前章ではIssueの使い方についてみてきけど、今度はその続きとしてPull Requestsの使い方を説明する。
  * 基本的にPull Requestは航海されているプログラムでバグを発見した際、他の人が修正したコードを```remote/origin/main```や```remote/origin/develop```にマージする前に正常に動くコードしてマージできるかを確認するための機能。
  * pythonのライブラリのコードも公開されていて、バグを見つけたらユーザがIssue/Pull Requestsを通してプログラムのバグを報告・修正・加筆することができる。

#### 12. Githubに戻ってpull request上を確認すると、マージされたブランチごとにポップアップが表示されている。
  <br> ```Compare & pull request```を選択する。
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/ea6ddd50-5ba5-447a-93a9-1707aa863ae2" width="800px">
  </p>

#### 13. マージ先のブランチ(```base:```)とマージするブランチ(```compare:```)を選択する。
  - マージできる場合はブランチ選択場所の右に```Able to merge```を緑で表示される。
    <br> ```Merge pull request```を選択。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/491f01ca-bb76-4ac2-b6e8-df70f79962c7" width="800px">
    </p>
    
  - マージできない場合は同じ場所に```Can't automecally merge.```と赤で表示される。
    <br> このように表示された場合は上記同様```Merge pull request```を選択した後、手順18へ飛んでください。
    <p align="center">
    <img src="https://github.com/mickylan2367/github_practice/assets/83509964/60eb62e5-ee5e-4bfa-b029-78a1c4ea04cb" width="800px">
    </p>

#### 14. マージできる場合は適宜コミット名を編集し、```Confirm merge```を選択
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/99f2e69e-aa8a-4498-a77c-21674c0209f2" height="200px">
  </p>

#### 15. 必要なくなったブランチは削除するため、```Delete Branch```を選択する。
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/71c543c4-c2dc-4bff-9263-cf05c1606e81" width="800px">
  </p>

  * ここの段階で```Delete Branch```を選択しても、VSCode上で```git branch -a```で確認すると削除したはずのブランチが表示される場合。
     <p align="center">
       <img src="https://github.com/mickylan2367/github_practice/assets/83509964/0da0d303-002b-4df8-a818-78cad8847336" width="500px">
     </p>
    
    * ブランチの最新情報はgit pullしても更新されないので、```git fetch -p```とコマンドを打ってブランチ情報を最新に保つ必要があります。
    * ローカルリポジトリに残っているブランチはVSCodeのターミナルで```git branch -d ブランチ名```と打って直接消しましょう。
     <p align="center">
       <img src="https://github.com/mickylan2367/github_practice/assets/83509964/50ea9d05-bd51-4303-b2a5-12b8e56494db" width="700px">
     </p>

    1. ```git pull```でファイルを最新にします
    2. ```git fetch -p```をVSCodeのターミナルで実行します。
    <p align="center">
       <img src="https://github.com/mickylan2367/github_practice/assets/83509964/d1454604-af1b-4896-8490-2db43d4d0536" width="700px">
    </p>
    3. すると、Github上で削除したブランチがローカルリポジトリ上でも削除されていることが分かる。
     <p align="center">
       <img src="https://github.com/mickylan2367/github_practice/assets/83509964/46a7499f-3d29-4d57-93cd-ba171d34a095" width="400px">
    </p>

#### 16. 解決し終わったIssuesは閉じておく。(Issuesに戻って```close issues```を選択)
  とりあえずこれで一通り編集修了！お疲れ様です。
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/252c123a-bbc4-4088-bb2c-d108e6cfdcc8" height="400px">
  </p>

#### 17. 手順14でマージできないと表示された場合、コンフリクトを解消する必要があります。下の画面から```web editor```を選択
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/6acb0aa2-f012-403a-8bf8-4987d40cca14" width="700px">
  </p>

#### 18. どこでコンフリクトが起きているかを表示してくれるので、コードを修正
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/99b928ba-5af7-4aee-bca8-463a2e22b47c" width="600px">
  </p>

#### 19. 編集し終わったら```Marked as resolved```を選択。編集結果がマージできそうなら下の画面のように、```Commit merge```と表示されるのでこれを選択
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/d11c924f-1889-4e09-9451-4423bab54cfb" width="600px">
  </p>

#### 20. コンフリクトが解消できて下の画面のように```Merge Pull Request```が表示されたら、手順15-18へ戻ります。
  <p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/90edb4bd-5147-4eae-9f84-3187bf408955" width="600px">
  </p>


<br>

## 下層フォルダの矢印問題

* 次のように、紐づけたはずのローカルリポジトリの下のフォルダの中にあるファイルが、pushしてもgithubにアップロードされない問題が発生することがある.
* ファイル名の前が⇒になっていて、クリックしても中身が出てこないのだ(;´･ω･)
<p align="center">
  <img src="https://github.com/mickylan2367/github_practice/assets/83509964/f1dbc1c6-40c4-432a-bfe1-29a6d71a9e67" width="600px">
</p>

この場合、
> git ls-files

でgitで管理されているフォルダを確認すると、フォルダ下のファイルが管理されていないことが分かるはず。
```
$ git rm -rf --cached <対象ファイル or path>
$ git add <対象ファイル or path>
 // <対象ファイル or path>部分は、$git ls-files した時に表示されている部分。
 // --cachedオプションを付けることにより、ファイルを残したまま管理対象から外すことができる。
```

今回の場合は、
```
git rm -rf --chached chaos
git add chaos\chaos.pde
```
を実行する。```git log```でファイルがトラッキングされていることを確認してから、
```
git add -A
git commit -m commit_name
```
ですべてのファイルをadd、commitする。この状態でpull & pushすればうまくいくかも！
* 参考サイト：<a href="https://qiita.com/fuwakun/items/d2ea19bf43eda3df0094">"githubでフォルダに矢印が！やっと解決した話"</a>
