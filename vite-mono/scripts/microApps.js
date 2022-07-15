const { readdir, access } = require('fs/promises');
const { readdirSync, accessSync } = require('fs');
const path = require('path');

const packagesDir = path.resolve(__dirname, '..', 'packages');
const notMicros = ['base', 'common', 'template', '.DS_Store'];

const getMicroAppsAsync = async () => {
  const micros = await readdir(packagesDir);
  return micros.filter(async (micro) => {
    try {
      await access(path.resolve(packagesDir, micro, 'index.html'));
      return !notMicros.includes(micro);
    } catch {
      return false;
    }
  });
};

const getMicroApps = () => {
  const micros = readdirSync(packagesDir);
  return micros.filter((micro) => {
    try {
      accessSync(path.resolve(packagesDir, micro, 'index.html'));
      return !notMicros.includes(micro);
    } catch {
      return false;
    }
  });
};

exports.getMicroAppsAsync = getMicroAppsAsync;
exports.getMicroApps = getMicroApps;

// test case
// async function main() {
//   const micros = await getMicroAppsAsync();
//   console.log(micros);
// }

// main()
