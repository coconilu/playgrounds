import inquirer from 'inquirer';
import path, { dirname } from 'path';
import { fileURLToPath } from 'url';
import styles from 'ansi-styles';
import { access, mkdir, readdir, stat, readFile, writeFile } from 'fs/promises';

const __dirname = dirname(fileURLToPath(import.meta.url));
const ignoreFiles = ['node_modules'];

async function copyDir(src, dist, replaceMap) {
  try {
    await access(dist);
    console.error(
      `${dist} ${styles.red.open}already exist.${styles.red.close}`,
    );
    return false;
  } catch (error) {
    await mkdir(dist);
    return await copyAndReplace(src, dist, replaceMap);
  }
}

async function copyAndReplace(src, dist, replaceMap) {
  try {
    const files = await readdir(src);
    await Promise.all(
      files
        .filter((file) => !ignoreFiles.includes(file))
        .map(async (file) => {
          const srcPath = src + '/' + file;
          const distPath = dist + '/' + file;
          try {
            const fileStat = await stat(srcPath);
            if (fileStat.isFile()) {
              try {
                // 拷贝文件并替换内容
                const fileContent = await readFile(srcPath, {
                  encoding: 'utf-8',
                });
                await writeFile(distPath, replaceWork(fileContent, replaceMap));
              } catch (error) {
                console.error(`copy file failed: ${file}\n`, error);
                return false;
              }
            } else if (fileStat.isDirectory()) {
              try {
                // 拷贝文件夹
                copyDir(srcPath, distPath, replaceMap);
              } catch (error) {
                console.error(`copy dir failed: ${file}\n`, error);
                return false;
              }
            }
          } catch (error) {
            console.error(`stat failed: ${file}\n`, error);
            return false;
          }
        }),
    );
    return true;
  } catch (error) {
    console.error(`readdir failed: ${src}\n`, error);
    return false;
  }
}

function replaceWork(fileContent, replaceMap) {
  let content = fileContent;
  Object.keys(replaceMap).forEach((key) => {
    content = fileContent.replace(new RegExp(key, 'g'), replaceMap[key]);
  });
  return content;
}

/**
 * 1. 询问 micro app name
 * 2. 创建文件夹
 * 3. 拷贝文件并替换字符串
 */
function main() {
  const replaceMap = {};
  const promptList = [
    {
      type: 'string',
      message: 'Please offer new Micro AppName: ',
      name: 'appName',
      validate: (val) => {
        return val.length > 2 ? true : 'AppName length cannot be less than 2';
      },
    },
  ];

  inquirer
    .prompt(promptList)
    .then(async (answer) => {
      const { appName } = answer;

      replaceMap['{{AppName}}'] = appName;

      const templateDir = path.resolve(__dirname, '..', 'packages', 'template');
      const newAppDir = path.resolve(__dirname, '..', 'packages', appName);
      const isSuccess = await copyDir(templateDir, newAppDir, replaceMap);

      if (!isSuccess) return;

      console.log(
        `\n🚀 Micro App ${styles.blue.open}${appName}${styles.blue.close} has successful generated.`,
      );
      console.log(
        `\n${styles.green.open}Please update dependence by running below script in project root: ${styles.green.close}`,
      );
      console.log(`    ${styles.yellow.open}pnpm i${styles.yellow.close}`);
      console.log(
        `\n${styles.green.open}After that, ${styles.green.close}${styles.yellow.open}re-run server${styles.yellow.close}\n`,
      );
    })
    .catch((error) => {
      if (error.isTtyError) {
        // Prompt couldn't be rendered in the current environment
        console.error('tty error\n', error);
      } else {
        // Something else went wrong
        console.error('normal error\n', error);
      }
    });
}

main();
