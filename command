ステージングする
git add ファイル名
git add .

ローカルリポジトリにコミットする
git commit

ローカルブランチの内容をリモートブランチにpush
git push (URLショトカ名) (リモートブランチ名)
git push origin master

ローカルリポジトリ作成
git init

リポジトリをコピー
git clone

変更状況の確認
git status

ステージング前、後の変更内容の確認
git diff ファイル名
git diff --staged

コミット歴の確認
コミットのログをわかりやすく表示 
git log
git log --graph

ファイル自体は残してリポジトリの管理からファイル削除
git rm --cached ファイル名

リモートリポジトリを作成(指定のURLを origin というショートカット名で登録)
複数のリモートリポジトリを登録する場合は(2)を使う
登録の詳細は27回を参考
git remote add origin 'URL'

特定のローカルブランチに特定のリモートブランチの差分をpullする
git pull origin REMOTE-BRANCH-NAME:LOCAL-BRANCH-NAME

ブランチを作成し、そこに移動
git checkout -b xxxxxx 
git checkout -b (新しいブランチ名) (元にするブランチ名)

ファイルの変更を取り消し
git checkout -- (ファイル名)

ステージングの取り消し（リポジトリの内容でステージを上書きする）
git reset HEAD (ファイル名)

直前のコミットを修正する（今のステージの内容を元にコミットをやり直す）
git commit --amend

fetch, push するリモートリポジトリの内容を表示
git remote -v

指定したリモートブランチの内容をローカルリポジトリに取ってくる
git fetch (URLショトカ名) (リモートブランチ名)
git fetch origin master

特定のローカルブランチの内容を別のブランチに追加
git merge (URLショトカ名)/(リモートブランチ名)
git merge origin/master

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
.gitignoreの書き方は30回を参照
ブランチとは特定のcommitファイルを参照する変数のようなもの（commitを指すポインタ）
HEAD branchは現在作業中のブランチを指すポインタ
コミットのやり直しはpushしたものについては決してしない事
リモートリポジトリは複数追加できる（バックアップなどに使用する）
-u の意味 = set --upstream
