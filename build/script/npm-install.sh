rm -rf /home/module/pkg && \
cp -r /home/wasm-app/pkg /home/module/pkg && \
cp /home/wasm-app/www/package*.json /home/module/www && \
cd /home/module/www && \
npm install
