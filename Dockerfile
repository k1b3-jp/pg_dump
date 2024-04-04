# postgresのバージョンは環境に合わせて適宜変更してください。
FROM postgres:latest

# アプリケーションディレクトリを作成する
WORKDIR /app

# ホストマシンからコンテナ内の作業ディレクトリにdump.shスクリプトをコピー
COPY dump.sh /app/dump.sh

# dump.shスクリプトに実行権限を付与
RUN chmod +x /app/dump.sh

# コンテナ起動時に実行されるコマンド
CMD ["./dump.sh"]
