// TODO: Add router-like routing (reactjs shit)

use yew::{classes, component, html, Html};

use crate::components::images;

mod components;

#[component]
fn App() -> Html {
    html! {
        <>
            <div class={classes!("loading")}>
                <h1>
                    <span>{"system"}</span>
                    <span>{"::"}</span>
                    <span>{"loading"}</span>
                </h1>
            </div>
            <div class={classes!("wrapper")}>
                <images::gear::SVG class="gear-image-svg" color="#232120" />
                <img class={classes!("m")} src="assets/images/goober.png" alt="" />
                <h1>{"UNDER CONSTRUCTION"}</h1>
            </div>
        </>
    }
}

fn main() {
    //:& Renders the app
    yew::Renderer::<App>::new().render();
}
