FROM node:22-slim

# 安裝必要的系統套件
RUN apt-get update && apt-get install -y \
    git \
    python3 \
    make \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# 設定工作目錄
WORKDIR /app

# 安裝 openclaw (原 moltbot)
RUN npm install -g openclaw@latest

# 預設執行指令 (進入引導模式)
CMD ["openclaw", "onboard"]
