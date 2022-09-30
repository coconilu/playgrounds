1、什么是依赖重写？比如遇到某个依赖新发的版本出问题，你可能会希望把他重置会老版本。比如一个依赖出现多个版本，你可能会希望把他们锁定为一个版本。

2、各个包管理工具 npm、yarn、pnpm、cnpm 的重写方式都不同，甚至同一个工具的不同版本也不同。比如 npm 5-6 不支持重写，npm 8 开始支持 overrides 重写；比如 yarn 1 支持 resolutions 重写，yarn 3 也支持但有些不同的语法；比如 pnpm 6.3.1 以下支持 resolutions，6.3.1 以上改为 pnpm.overrides，resolutions 是到 pnpm.overrides 的别名。

3、Npm 8 的 overrides 语法如下。

```ts
# 重写所有 foo
"foo": "1",
# 用 dependencies 中声明的版本
"foo": "$foo",
# 支持选择版本
"foo@6.0.0": "6.0.1", 
# 选择版本支持 semver
"foo@^2": "1",
# 替换为空包，相当于删除这个依赖
"foo": "npm:noop-package@1.0.0", 
# 替换所有 foo 为 bar
"foo": "npm:bar", 
# 替换 foo 为 fork 版本
"foo": "github:foo/foo
# 支持嵌套，替换 foo 为 1，同时只替换 foo 下的 bar 为 2
"foo": {
  ".": "1",
  "bar": "2"
}
```

4、Yarn 1 的 resolutions 感觉弱一些，最明确的不足是选择器不支持版本。

```ts
# 重写所有一级依赖外的 foo 为 1
"foo": "1"
# 支持嵌套，替换 foo 下的直接依赖 bar 为 2
"foo/bar": "2"
# 替换 foo 下的所有依赖 bar 为 2
"foo/**/bar": "2"
```

5、Yarn 3 在 Yarn 1 的基础上支持了版本号，但不支持重写嵌套依赖。

6、pnpm 是在 Yarn 1 基础上做了增强。

```ts
# 选择版本支持 semver
"foo@^2": "1",
# 替换所有 foo 为 bar@1
"foo": "npm:bar@1", 
# 替换 foo@1 下的直接依赖 bar 为 2
"foo@1>bar": "2"
```