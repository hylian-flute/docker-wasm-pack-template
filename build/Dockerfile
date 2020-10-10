FROM rust
ENV USER charines
COPY ./script /home/script/
COPY ./package.json /home/package.json
RUN cargo install wasm-pack && \
  cargo install cargo-generate && \
  apt update && apt install -y npm && \
  npm install -gy create-wasm-app && \
  cd /home && \
  cargo generate --name wasm-app --git https://github.com/rustwasm/wasm-pack-template && \
  cd /home/wasm-app && \
  mv /home/script /home/wasm-app && \
  wasm-pack build && \
  create-wasm-app www && \
  mv /home/package.json /home/wasm-app/www/package.json && \
  rm -r /home/wasm-app/www/.git && \
  mkdir /home/module && \
  mkdir /home/module/www && \
  ln -s /home/module/www/node_modules /home/wasm-app/www/node_modules
WORKDIR /home/wasm-app
