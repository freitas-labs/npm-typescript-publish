# node-npm-typescript-publish

Spike to publish a typescript Node package to NPM

---

This repo was bootstraped with my [node typescript project boilerplate](node-npm-typescript-prettier-eslint-jest-hotreload-hooks). It uses the [@changesets/cli](https://github.com/changesets/changesets) tool to manage the Node package versioning, changelog and release process.

It's also configured with a GitHub action that uses `changesets/action@v1` to create a release pull request, whenever new changes are detected on `main` branch. Once this PR is merged, it will automatically bump the package version, create a release tag, trigger a release on GitHub and publishes the package to NPM.

---

If you found this spike useful, you can generate a custom project that uses the same tools for building programs and libraries. Find out more at https://github.com/dart-pacotes/.bricks/tree/master/pacote_web

## Acknowledgements

I would like to thank @mattpocock for introducing me to `changeset` tool! Here's Matt video on it:

[![Watch the video](https://img.youtube.com/vi/eh89VE3Mk5g/hqdefault.jpg)](https://youtu.be/eh89VE3Mk5g)
