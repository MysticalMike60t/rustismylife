<h1 align="center">Rust is my Life</h1>
<p align="center" name="version-badges">
  <img src="https://img.shields.io/badge/node->=%20v24.13.0-brightgreen.svg" />
  <img src="https://img.shields.io/badge/rustup%20toolchain-=%20v1.81.0-orange.svg" />
</p>

<!-- prettier-ignore-start -->
> [!WARNING]
> The [Progress Graph](#process-graph) is a work in progress[^1], therefor it may be inacurate.
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

To edit this interactively, go [here](https://mermaid.ai/play) and paste the code inside `\`\`\`mermaid ... \`\`\``.

</details>

<h2 align="center" name="dev-setup">Dev Setup</h2>

Prepare 2 seperate terminals.

In terminal 1, Run these scripts in order:

<p name="dev-scripts-order">

1. `build.sh`
2. `install_deps.sh`
3. `start_dev.sh`

</p>

Then every time you update the Rust backend using `build.sh`, it will automatically update your local live development server.

<!-- prettier-ignore-start -->
> [!TIP]
> If any of these scripts result in errors while running the [scripts](#dev-scripts-order), refer to the **node** & **toolchain**[^2] [versions](#version-badges) above, and run each command in the `.sh` files seperately.
<!-- prettier-ignore-end -->

Feel free to make a pull request that fixes any issues you encounter!

<!-- prettier-ignore-start -->
> [!WARNING]
> This project is a work in progress, please be nice :3
<!-- prettier-ignore-end -->

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
[^2]: The specific version for the **rustup toolchain** is a temporary fix, this will be changed soon.