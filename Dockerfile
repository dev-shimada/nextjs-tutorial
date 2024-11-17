FROM node:23.1-bookworm-slim AS vscode

WORKDIR /workspace
COPY . /workspace

RUN <<EOF
apt-get update
apt-get install -y git vim
npm install --prefix ./nextjs-blog
EOF

CMD ["npm", "run", "dev", "--prefix", "./nextjs-blog"]
