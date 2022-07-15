/**
 * We use two stack to simulate the history of navigate.
 * (When go back, we should move the record to another stack, and when go forward,
 * move record back)
 * Example:
 * s1 = ['/a', '/b', '/c']
 * s2 = []
 * goBack => s1 = ['/a', '/b'], s2 = ['/c']
 * goBack => s1 = ['/a'], s2 = ['/c', '/b']
 * goForward => s1 = ['/a', '/b'], s2 = ['/c']
 * push /d => s1 = ['/a', '/b', '/d'], s2 = []
 * replace /e => s1 = ['/a', '/b', '/e'], s2 = []
 */

interface IStack {
  pathname: string;
  state: any;
}

export interface IRecord {
  action: 'push' | 'replace' | 'goForward' | 'goBack';
  current: IStack;
  step?: number;
}

export default class Stack {
  s1: IStack[];
  s2: IStack[];
  records: IRecord[];

  constructor() {
    this.s1 = [];
    this.s2 = [];
    this.records = [];
  }

  push(pathname, state) {
    const current = this.s1[this.s1.length - 1] || null;
    this.s1.push({
      pathname,
      state,
    });
    this.s2 = [];
    this.records.push({
      action: 'push',
      current,
    });
  }

  replace(pathname, state) {
    const current = this.s1.pop();
    this.s1.push({ pathname, state });
    this.s2 = [];
    this.records.push({
      action: 'replace',
      current,
    });
  }

  goBack() {
    this.go(-1);
  }

  goForward() {
    this.go(1);
  }

  go(step) {
    if (!step) return;

    const current = this.s1[this.s1.length - 1] || null;

    let validStep = 0;
    for (validStep = 0; validStep < Math.abs(step); validStep++) {
      if (step < 0 && this.s1.length) {
        this.s2.push(this.s1.pop());
        continue;
      }
      if (step > 0 && this.s2.length) {
        this.s1.push(this.s2.pop());
        continue;
      }
      break;
    }

    this.records.push({
      action: step > 0 ? 'goForward' : 'goBack',
      current,
      step: validStep,
    });
  }

  topIndex() {
    if (this.s1.length === 0)
      throw new Error('topIndex: The history stack is empty');
    return this.s1.length - 1;
  }

  /**
   * use this to get from when history.goBack
   */
  getFrom() {
    return this.records.length
      ? this.records[this.records.length - 1].current
      : null;
  }

  getPre() {
    if (this.s1.length <= 1) return null;
    return this.s1[this.s1.length - 2];
  }
}
