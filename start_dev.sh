#:& Start dev server script for lazy people

#:& Build WebAssembly
wasm-pack build --target bundler

#:& Build node_modules
cd ./www
npm install

#:& Start local dev server
npm run start
cd -