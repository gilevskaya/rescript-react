%raw("require('./tailwind.css')")

module App = {
  @react.component
  let make = () => {
    <div className="w-screen flex justify-center"> <Button.Button initCount={0} /> </div>
  }
}

ReactDOMRe.renderToElementWithId(<App />, "root")

// Docs:
// https://dev.to/jdeisenberg/manipulating-the-dom-with-rescript-3llf
// https://github.com/dylanirlbeck/tailwind-ppx
