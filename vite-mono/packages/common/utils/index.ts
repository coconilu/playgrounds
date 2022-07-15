export const isDef = (val: any) => val !== undefined && val !== null;

export const isString = (val): boolean => typeof val === "string";

export const isNumber = (val): boolean => typeof val === "number";

export const getQueryStr = (obj) => {
  const _obj = {};
  for (const k in obj) {
    if (!(obj[k] === undefined)) {
      _obj[k] = encodeURIComponent(obj[k]);
    }
  }
  return _obj
    ? Object.keys(_obj)
        .map((key) => `${key}=${_obj[key]}`)
        .join("&")
    : "";
};

export const safeGet: any = (
  obj: any,
  path: string | Array<string | number>,
  fallback?: any
) => {
  if (obj === undefined || obj === null) return fallback;
  if (Array.isArray(path)) {
    return path.reduce((ob, k) => {
      return ob && isDef(ob[k]) ? ob[k] : fallback;
    }, obj);
  } else if (typeof path === "string") {
    const arrKeys = path.split(".");
    const pathKeys: (string | Array<string | number>)[] = [];
    let m: RegExpMatchArray;
    arrKeys.forEach((k: string) => {
      if ((m = k.match(/([^[\]]+)|(\[\d+\])/g))) {
        m = m.map((v) => v.replace(/\[(\d+)\]/, "$1"));
        [].push.apply(pathKeys, m);
      }
    });
    return safeGet(obj, pathKeys, fallback);
  } else {
    return fallback;
  }
};
