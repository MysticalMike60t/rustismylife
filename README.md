<h1 align="center">Rust is my Life</h1>
<p align="center" name="version-badges">
  <img src="https://img.shields.io/badge/rustup%20toolchain->=%20v1.93.0-orange.svg" />
</p>
<p align="center" name="status-badges">
  <img src="https://github.com/MysticalMike60t/rustismylife/actions/workflows/deploy.yml/badge.svg" />
</p>

<!-- prettier-ignore-start -->
> [!WARNING]
> The [Progress Graph](#process-graph) is a work in progress[^1], therefor it may be inaccurate.
<!-- prettier-ignore-end -->

<details name="process-graph">

<summary>Process Graph</summary>

```mermaid
---
config:
  flowchart:
    htmlLabels: false
  layout: elk
---
flowchart TB
 subgraph s1["Nodejs Frontend"]
        nodejsfrontend["Nodejs Frontend"]
        n3["Webpack"]
  end
 subgraph s2["Rust Backend"]
        rustbackend["lib"]
        webassembly["WebAssembly"]
        n5["wasm-bindgen"]
  end
    webassembly --> nodejsfrontend
    nodejsfrontend --> n3
    n3 --> n4["Static Files (to be served)"]
    rustbackend L_rustbackend_n5_0@<--> n5
    n5 --> webassembly

    n3@{ shape: out-in}
    webassembly@{ shape: lean-l}
    n5@{ shape: subproc}
    style nodejsfrontend fill:#BBDEFB,stroke:none,color:#000000
    style n3 fill:#BBDEFB,stroke:none,color:#000000
    style rustbackend fill:#C8E6C9,stroke:#C8E6C9,color:#000000
    style webassembly fill:#BBDEFB,stroke:none,color:#000000
    style n5 fill:#FFE0B2,stroke:#FFE0B2,color:#000000
    style n4 fill:#FFF9C4,stroke:none,color:#000000
    style s2 fill:transparent,stroke:none,color:#FFFFFF
    style s1 fill:transparent,stroke:none,color:#FFFFFF
    linkStyle 0 stroke:#FFFFFF,fill:none
    linkStyle 1 stroke:#FFFFFF,fill:none
    linkStyle 2 stroke:#FFFFFF,fill:none
    linkStyle 3 stroke:#FFFFFF,fill:none
    linkStyle 4 stroke:#FFFFFF,fill:none

    L_rustbackend_n5_0@{ animation: none }
```

To edit this interactively, go [here](https://mermaid.ai/play) and paste the code inside the `mermaid` code block above.

</details>

<h2 align="center" name="dev-setup">Dev Setup</h2>

Run these scripts in order:

<p name="dev-scripts-order">

1. `install_deps.sh`
2. `start_dev.sh`

</p>

The local dev server is live, so any changes you make will automatically refresh your server with the changes.

<!-- prettier-ignore-start -->
> [!TIP]
> If any of these scripts result in errors while running the [scripts](#dev-scripts-order), refer to the **node** & **toolchain** [versions](#version-badges) above, and run each command in the `.sh` files separately.
<!-- prettier-ignore-end -->

Feel free to make a pull request that fixes any issues you encounter!

<h2>Misc Info</h2>

<details>

<summary>.vscode folder</summary>

The `.vscode` folder is included since I currently use it for a lot of my projects, and it provides a lot of visual and workflow enhancements that make development faster and easier.

The syntax for this is (in a `.sh` script example):
```sh
#:&
# INFO:
```
Both do the exact same thing, but the `:&` is the shorthand version of `INFO` (you do not need `:`).

This applies to every type. You can look in the `.vscode/settings.json` file under `todo-tree.general.tags` and `todo-tree.general.tagGroups` for everything you can use.

This also works *inline*:
```sh
cat list.txt #:& This reads the list.txt file
cat list.txt # INFO: This reads the list.txt file
```
Also:
```sh
nano list.txt # USAGE While editing this file, each item gets it's own line
```

</details>

[^1]: This project is a work in progress, so there will be issues or shitty code for a while.