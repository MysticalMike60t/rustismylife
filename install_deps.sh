#:& Simple script because I am too lazy :3

# TODO: Fix toolchain version issue, and use newer version
#:& Set working cargo toolchain
rustup toolchain install 1.81.0
rustup override set 1.81.0

#:& Build node_modules
cd ./www
npm install
cd -