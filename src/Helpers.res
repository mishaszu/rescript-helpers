let jsUnwrapVariant: 'a => 'b = %raw(`function unwrapVariant(v) {
  if (v._0 !== undefined) {
    return v._0;
  } else {
    return v;
  }
}`)

let jsFakeUnwrapVariant: 'a => 'b = %raw(`function unwrapVariant(v) {
  return v;
}`)

let jsCreateObj: (string, 'a) => Js.t<'b> = %raw(`function createObj(key, value) {
  var obj = {};
  obj[key] = value;
  return obj;
}`)

let jsGetObjValueByKey: (
  Js.t<'a>,
  string,
) => Js.undefined<'b> = %raw(`function getObjValueByKey(obj, key) {
  return obj[key];
}`)
