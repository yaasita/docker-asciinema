# asciinemaインストールイメージ

## 使い方

1. authorized_keysに自分の公開鍵を置く
2. asciinemaというイメージをビルド

        docker build -t asciinema .
3. 実行

        docker run -p 22022:22 -d asciinema
4. sshでログイン
    
        ssh localhost -lroot -p22022
5. asciinema実行
        
        asciinema rec


