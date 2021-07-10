let default = (): React.element => {
  Js.log(`日本語`) // 日本語はバッククォート
  Js.log("だめ")
  <div> {React.string(`日本語`)} <BasicElement /> </div>
}
