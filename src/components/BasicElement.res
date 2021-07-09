let element = <div> {React.string("basic element")} </div>

let wrapChildren = (children: React.element) => {
  <div> <div> {React.string("wrapper")} </div> children </div>
}

@react.component
let make = () => wrapChildren(element)
