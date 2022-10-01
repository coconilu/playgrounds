/**
 * 判断是不是普通的object
 * @param obj 
 * @returns 
 */
export function isPlainObject(obj) {
  if (typeof obj !== 'object' || obj === null) return false

  const proto = Object.getPrototypeOf(obj);
  return proto !== null && Object.getPrototypeOf(proto) === null;
}

export const isPlainObject2 = (obj)=> {
  return Object.prototype.toString.call(obj) === '[object Object]';
}
