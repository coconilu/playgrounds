import {
  createBrowserHistory as createHistory,
  History,
  BrowserHistory,
} from 'history';
import { basePath } from '@/constants';
import Stack, { IRecord } from './stack';
import { safeGet } from '..';

interface IBrowserHistory extends BrowserHistory {
  goBackTo: (pathNames: string, needPop: boolean) => boolean;
  getLastAction: () => IRecord['action'];
  stack: Stack;
  goBack: () => void;
  location: BrowserHistory['location'] & {
    state: any;
  };
}

const history = createHistory({
  window,
}) as IBrowserHistory;

const {
  push,
  replace,
  go,
  location: { pathname, state },
} = history;

const stack = new Stack();
stack.push(pathname, state);

const parseParamsDecorate =
  (func) =>
  (path, state = {}) => {
    if (typeof path === 'object') {
      state = path.state || {};
      path = path.pathname;
    }
    func.call(history, path, state);
  };

const addFromDecorate = (func) => {
  return (path, state = {}) => {
    const { pathname, search, key, hash } = history.location;
    func.call(history, path, {
      from: { pathname, search, key, hash },
      ...state,
    });
  };
};

const addParallelFromDecorate = (func) => {
  return (path, state: any = {}) => {
    const { state: curState } = history.location;
    func.call(history, path, {
      ...state,
      parallelFrom: curState?.from ?? {},
    });
  };
};

const bridgeDecorate = (func) => {
  return (path, state: any = {}) => {
    func.call(history, path, state);
  };
};

// history.push = addFromDecorate(push);
history.push = parseParamsDecorate(
  bridgeDecorate(
    addFromDecorate((path, state) => {
      stack.push(path, state);
      push(path, state);
    }),
  ),
);
// history.replace = addFromDecorate(replace);
history.replace = parseParamsDecorate(
  addParallelFromDecorate(
    addFromDecorate((path, state) => {
      stack.replace(path, state);
      replace(path, state);
    }),
  ),
);

history.goBackTo = (pathNames, needPop) => {
  const targetPathNameIndex = safeGet(stack, 's1', [])
      .slice()
      .reverse()
      .slice(1)
      .findIndex((item) => pathNames.includes(item.pathname));
    if (targetPathNameIndex >= 0) {
      const step = targetPathNameIndex + 1;
      stack.go(-step);
      go(-step);
      return true;
    } else {
      return false;
    }
};

// 带上 basePath 的 push 方法
export const pushWithBasePath: History['push'] = (path, state) => {
  let pathName = typeof path === 'string' ? path : path.pathname;
  if (!pathName.startsWith(basePath)) {
    pathName = basePath + pathName;
  }

  history.push(
    typeof path === 'string'
      ? pathName
      : {
          ...path,
          pathname: pathName,
        },
    state,
  );
};

// 带上 basePath 的 push 方法
export const replaceWithBasePath: History['replace'] = (path, state) => {
  let pathName = typeof path === 'string' ? path : path.pathname;
  if (!pathName.startsWith(basePath)) {
    pathName = basePath + pathName;
  }

  history.replace(
    typeof path === 'string'
      ? pathName
      : {
          ...path,
          pathname: pathName,
        },
    state,
  );
};

history.goBack = () => {
  stack.go(-1);
    go(-1);
};

history.go = (step: number) => {
  stack.go(step);
    go(step);
};

history.getLastAction = (): IRecord['action'] => {
  const records = stack.records;
  const lastAction = safeGet(records, [`${records.length - 1}`, 'action']);
  return lastAction;
};

history.stack = stack;
export default history;
