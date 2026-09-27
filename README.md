# Devin Jev

Devin CLIからTypeSafe AIのJevを、範囲を限定した判断補助として使うスキルです。このソースリポジトリは `jev-codex` とは独立しています。Devin CLI用のインストール先は、Windowsユーザープロファイル内の `%APPDATA%\devin\skills\devin-jev` です。

## 使い方

Devin CLIを新しく起動し、設計案の比較など具体的な判断をするときに `/devin-jev` を呼び出します。内容に応じてDevin CLIが自動的にこのスキルを使う場合もあります。

## グローバルスキルのインストール・更新

このリポジトリでPowerShellを開き、次を実行します。

```powershell
.\install.ps1
```

インストーラーは `SKILL.md` と `scripts/jev_decide.py` をDevin CLIの共通スキルフォルダーへコピーします。インストール先にある `.env` は上書きしません。ヘルパーはそこから `TYPESAFE_API_KEY` を読み込みます。

`.env` がまだない場合は `%APPDATA%\devin\skills\devin-jev\.env` に作成し、次の形式でAPIキーを設定してください。

```text
TYPESAFE_API_KEY=ここにAPIキーを入力
```

`.env` はGitの対象外です。APIキーをコミットしたり、チャットに貼り付けたりしないでください。

## ファイル一覧

- `SKILL.md` — Devin CLI向けの指示と利用手順
- `scripts/jev_decide.py` — TypeSafe System One APIを呼び出す小さなクライアント
- `.env.example` — 実際の認証情報を含まないAPIキー設定例
- `install.ps1` — `.env` を保ったまま、管理対象のスキルファイルをDevin CLIの共通スキルフォルダーへコピーするスクリプト

