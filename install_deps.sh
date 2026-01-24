#:& Simple script because I am too lazy :3

#:& Install needed target
rustup target add wasm32-unknown-unknown

#:& IDK why this is here, but it is, lol
cargo install cargo-generate
cargo install wasm-pack
cargo install wasm-opt

cargo install trunk --locked

# TODO: Add options for other package managers
sudo pacman -S --noconfirm jq

#:& Download and build binaryen (to get wasm-opt and stuff)
get_url() {
    curl -s "https://api.github.com/repos/WebAssembly/binaryen/releases/latest" | jq -r '.assets[] | select(.name | endswith("x86_64-linux.tar.gz")) | .browser_download_url'
}
curl -L "$(get_url)" -o "/tmp/meow.tar.gz"
sudo mkdir /opt/binaryen
sudo tar -xvf "/tmp/meow.tar.gz" -C "/opt/binaryen"
sudo rm -f /tmp/meow.tar.gz
FOLDER_NAME="$(ls /opt/binaryen)"
sudo mv /opt/binaryen/$FOLDER_NAME/* /opt/binaryen/
sudo rm -rf "/opt/binaryen/$FOLDER_NAME"
sudo rm -f /usr/bin/wasm-opt
sudo ln -s /opt/binaryen/bin/wasm-opt /usr/bin/wasm-opt