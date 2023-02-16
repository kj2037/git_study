git add ファイル名
git add .
ステージングする

git commit
ローカルリポジトリにコミットする

git push (URLショトカ名) (リモートブランチ名)
git push (URLショトカ名) REMOTE-BRANCH-NAME:LOCAL-BRANCH-NAME
git push origin master
特定のローカルブランチの内容をリモートブランチにpush
省略形の場合、現在のローカルブランチが指定される


git init
ローカルリポジトリ作成

git clone
リポジトリをコピー

git status
変更状況の確認

git diff ファイル名
git diff --staged
ステージング前、後の変更内容の確認

git log
git log --graph
コミット歴の確認
コミットのログをわかりやすく表示 

git rm --cached ファイル名
ファイル自体は残してリポジトリの管理からファイル削除

git remote add origin 'URL'
リモートリポジトリへの参照を作成(指定のURLを origin というショートカット名で登録)
登録の詳細は27回を参考

git pull origin REMOTE-BRANCH-NAME:LOCAL-BRANCH-NAME
特定のローカルブランチに特定のリモートブランチの差分をpullする

git checkout -b xxxxxx 
git checkout -b (新しいブランチ名) (元にするブランチ名)
ブランチを作成し、そこに移動

git checkout -- (ファイル名)
ファイルの変更を取り消し

git reset HEAD (ファイル名)
ステージングの取り消し（リポジトリの内容でステージを上書きする）

git commit --amend
直前のコミットを修正する（今のステージの内容を元にコミットをやり直す）

git reset --soft HEAD^
直前のコミット取り消し(ワークツリーの内容はそのまま)
ワークツリーの内容も消去するなら --hard を使う

git remote -v
fetch, push するリモートリポジトリの内容を表示

git fetch (URLショトカ名) (リモートブランチ名)
git fetch origin master
指定したリモートブランチの内容をそれを追跡しているローカルリポジトリに取ってくる。
例の場合, 'リモートブランチ master' の最新の状態が '追跡ブランチ origin/master' に反映される

git merge (追跡ブランチ)
git merge (ローカルブランチ名)
git merge origin/master
特定のローカルブランチの内容を別のブランチに追加
(指定したブランチがHEADの指しているブランチに取り込まれる)

ブランチ一覧を取得
git branch

ブランチを削除
git branch -d xxxxxxxx

変更を stash に一時退避し、元の状態に戻す
git stash save

stash にある変更リストを確認
git stash list

stash から変更を呼びだし、リストから削除
git stash pop xxxxx

その他メモ
(URLショトカ名)はリモートブランチへのアクセスURL
「追跡ブランチ」とは特定のリモートブランチを追跡しているローカルブランチ
「追跡ブランチ」は通常、リモートブランチの1種として説明がされる
.gitignoreの書き方は30回を参照
ブランチとは特定のcommitファイルを参照する変数のようなもの（commitを指すポインタ）
HEAD branchは現在作業中のブランチを指すポインタ
コミットのやり直しはpushしたものについては決してしない事
リモートリポジトリは複数追加できる（バックアップなどに使用する）
-u の意味 = set --upstream
