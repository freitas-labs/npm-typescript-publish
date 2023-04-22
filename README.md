# node-npm-typescript-publish

Spike to publish a typescript Node package to NPM

---

This repo presents a spike done to create a barebones Node.js project that is built with TypeScript and uses:

- `npm` to manage dependencies and act as a build tool;
- `eslint` to enforce coding style with linting rules;
- `prettier` to format source files using present linting rules;
- `jest` to describe and execute unit tests;
- `tsup` to compile and bundle project for types (`.d.ts`), CommonJS (`.cjs`), transpiled JS (`.js`) and source-maps (`.map`);
- `nodemon` to provide a way to mantain a lifecycle of the program execution, reloading and applying changes automatically;
- `swc` to compile and run the program in a fast manner;
- `git-hooks` to prevent pushing files that are not formatted.

Each step was documented via git commits, so you can follow the process from start to finish via `git log`.

---

If you found this spike useful, you can generate a custom project that uses the same tools for building programs and libraries. Find out more at https://github.com/dart-pacotes/.bricks/tree/master/pacote_web
