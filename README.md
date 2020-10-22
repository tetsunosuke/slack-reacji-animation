# slack-reacji-animation

slackのreacji用アニメーション生成ツール

# 使い方

## ローカルで実行したい人

```
$ bundle install
$ bundle exec ruby generate.rb <チャンネル名>
```

## Dockerで実行したい人の例

```
$ docker build -t slack-reacji-animation .
$ docker run  --rm -v $(pwd):$(pwd) -w $(pwd) -it slack-reacji-animation bundle exec ruby generate.rb <チャンネル名>
```

## 実行後

実行したらカレントフォルダに reacji-チャンネル名.png ができます。日本語名だとうまく使えない可能性があるので半角英数に書き換えると良いと思います

