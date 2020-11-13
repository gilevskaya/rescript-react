Js.log("Hello, World!")

module Button = {
  @react.component
  let make = (~initCount: int) => {
    let (count, setCount) = React.useState(_ => initCount)

    let times = switch count {
    | 1 => "once"
    | 2 => "twice"
    | n => Belt.Int.toString(n) ++ " times"
    }
    let msg = "Clicked " ++ times

    <button
      className="p-3 mt-5 bg-blue-400 border border-blue-900 hover:bg-primary focus:outline-none"
      onClick={_ => setCount(prevCount => prevCount + 1)}>
      {msg->React.string}
    </button>
  }
}
