# nttr.fly.dev

## 前提

- Redis

## 構築

```sh
git clone git@github.com:kou029w/nttr.fly.dev.git
curl -L https://fly.io/install.sh | sh
flyctl auth login
flyctl launch --no-deploy
flyctl secrets set REDIS_HOST=redis   # Redis接続情報を設定
flyctl secrets set REDIS_PORT=6379    # Redis接続情報を設定
flyctl secrets set REDIS_PASSWORD=*** # Redis接続情報を設定
flyctl secrets set "SECRET_KEY=$(python3 -c 'import secrets; print(secrets.token_urlsafe())')"
flyctl deploy --local-only
```
