# node-npm-typescript-publish

Spike to publish a typescript Node package to NPM

![npm version](https://badgen.net/npm/v/npm-typescript-publish) ![npm total downloads](https://badgen.net/npm/dt/npm-typescript-publish) ![bundlephobia bundle size](https://badgen.net/bundlephobia/min/npm-typescript-publish)

---

This repo was bootstraped with my [node typescript project boilerplate](https://github.com/freitas-labs/node-npm-typescript-prettier-eslint-jest-hotreload-hooks). It uses the [@changesets/cli](https://github.com/changesets/changesets) tool to manage the Node package versioning, changelog and release process.

It's also configured with a GitHub action that uses `changesets/action@v1` to create a release pull request, whenever new changes are detected on `main` branch. Once this PR is merged, it will automatically bump the package version, create a release tag, trigger a release on GitHub and publishes the package to NPM.

The way it works is by running the `changesets` tool when releasing the package, which creates a temporary file associated to the changes of the version being released. Then, when this file is pushed to the `main` branch, the changesets action detects that a release PR must be created. This PR removes the temporary file, and updates the needed files for a successful release!

Note: The release PR is only created in the presence of the temporary file created by the changesets tool!

---

## Scripts

- `npm run release` to create the temporary changesets file
- `npm run publish` to publish the package to NPM

## Acknowledgements

I would like to thank @mattpocock for introducing me to `changeset` tool! Here's Matt video on it:

[![Watch the video](https://img.youtube.com/vi/eh89VE3Mk5g/hqdefault.jpg)](https://youtu.be/eh89VE3Mk5g)

If you found this spike useful, you can generate a custom project that uses the same tools for building programs and libraries. Find out more at https://github.com/dart-pacotes/.bricks/tree/master/pacote_web
