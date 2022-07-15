const host = "demo.com";

function getDevHost() {
  return host;
}

function getHttpsHost() {
  return `https://${host}`;
}

export { getDevHost, getHttpsHost };
