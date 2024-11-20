# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### [1.5.3](https://github.com/batinicaz/oci-core/compare/v1.5.2...v1.5.3) (2024-11-20)

### [1.5.2](https://github.com/batinicaz/oci-core/compare/v1.5.1...v1.5.2) (2023-08-05)


### Bug Fixes

* create security lists for public + private and attach to subnets ([df81dba](https://github.com/batinicaz/oci-core/commit/df81dba6e07e92cddb2765e6a8a9735ff3c87742))

### [1.5.1](https://github.com/batinicaz/oci-core/compare/v1.5.0...v1.5.1) (2023-08-05)


### Bug Fixes

* add required tags to security list ([b372b86](https://github.com/batinicaz/oci-core/commit/b372b8675e2edb96ca54d6fbf31706b152c9f4b1))

## [1.5.0](https://github.com/batinicaz/oci-core/compare/v1.4.0...v1.5.0) (2023-08-05)


### Features

* allow internal traffic from public to private subnets ([22cec0f](https://github.com/batinicaz/oci-core/commit/22cec0f1d2b585b8d6f009bb360d1c75efb55f4e))

## [1.4.0](https://github.com/batinicaz/oci-core/compare/v1.3.2...v1.4.0) (2023-08-05)


### Features

* add kms vault ([618fd0f](https://github.com/batinicaz/oci-core/commit/618fd0f84b1541f91fd1dcbaef40c6566c0957bc))
* add NAT GW to private subnets ([5fabaa5](https://github.com/batinicaz/oci-core/commit/5fabaa5217b11d60a3b7c05d667b1c7d629c31d8))


### Bug Fixes

* ignore changes caused by auto generated Oracle tags ([56899e8](https://github.com/batinicaz/oci-core/commit/56899e8b5fa602e83a090534a49b36fccd54a73c))

### [1.3.2](https://github.com/batinicaz/oci-core/compare/v1.3.1...v1.3.2) (2023-08-04)


### Bug Fixes

* output for subnets to include public and private ([033bca0](https://github.com/batinicaz/oci-core/commit/033bca09f6dcc72a6a74c36c55b5c884e7aa6dc2))

### [1.3.1](https://github.com/batinicaz/oci-core/compare/v1.3.0...v1.3.1) (2023-08-03)


### Bug Fixes

* display name of budget + budget alerts ([f2943c4](https://github.com/batinicaz/oci-core/commit/f2943c45f46ab001af576379c6dfa5ec4142f91b))

## [1.3.0](https://github.com/batinicaz/oci-core/compare/v1.2.10...v1.3.0) (2023-08-03)


### Features

* add budget and alerting ([513e5af](https://github.com/batinicaz/oci-core/commit/513e5afe89956f4039e334694e60d865cce00fa8))

### [1.2.10](https://github.com/batinicaz/oci-core/compare/v1.2.9...v1.2.10) (2023-07-12)

### [1.2.9](https://github.com/batinicaz/oci-core/compare/v1.2.8...v1.2.9) (2023-07-11)

### [1.2.8](https://github.com/batinicaz/oci-core/compare/v1.2.7...v1.2.8) (2023-07-10)

### [1.2.7](https://github.com/batinicaz/oci-core/compare/v1.2.6...v1.2.7) (2023-07-10)

### [1.2.6](https://github.com/batinicaz/oci-core/compare/v1.2.5...v1.2.6) (2023-07-10)


### Bug Fixes

* remove conflict dns attribute on subnets + correct private subnet name ([a64c19a](https://github.com/batinicaz/oci-core/commit/a64c19a811f917ffb9ec6aa3dfdb7083251f9e61))

### [1.2.5](https://github.com/batinicaz/oci-core/compare/v1.2.4...v1.2.5) (2023-07-10)


### Bug Fixes

* set required default tags ([34db847](https://github.com/batinicaz/oci-core/commit/34db847fd8b22b91f0c227623e69df0344d9cc08))

### [1.2.4](https://github.com/batinicaz/oci-core/compare/v1.2.3...v1.2.4) (2023-07-10)


### Bug Fixes

* add output for PR_LABELS to make it available to release job ([f90983a](https://github.com/batinicaz/oci-core/commit/f90983a0a2a3e254287d346b5735e55692ad064a))
* correctly namespace tags ([936475b](https://github.com/batinicaz/oci-core/commit/936475bf679999254ca599ca7d5b1faa187d9baa))

### [1.2.3](https://github.com/batinicaz/oci-core/compare/v1.2.2...v1.2.3) (2023-07-10)


### Bug Fixes

* update default tags to enforce default_value as required by api ([a83d552](https://github.com/batinicaz/oci-core/commit/a83d5528f4fd632ab43b7e52fbf981cbee89187b))

### [1.2.2](https://github.com/batinicaz/oci-core/compare/v1.2.1...v1.2.2) (2023-07-10)


### Bug Fixes

* add missing $ to GITHUB_OUTPUT ([8b483d2](https://github.com/batinicaz/oci-core/commit/8b483d2410bc01f2b314706c7238eea6d7e304f0))
* ensure pr label is added to output instead of env ([60eb041](https://github.com/batinicaz/oci-core/commit/60eb04173de34c230a91a6e83c7f44d3f60bea05))

### [1.2.1](https://github.com/batinicaz/oci-core/compare/v1.2.0...v1.2.1) (2023-07-10)


### Bug Fixes

* set root compartment id to enable creating compartment + rename to better describe ([07c6f09](https://github.com/batinicaz/oci-core/commit/07c6f0980468f1f43ffb42f154ea0de8686eeafa))
* update auto release conditional to do a string comparison so release does not loop ([38c3311](https://github.com/batinicaz/oci-core/commit/38c331114c66faa7bf4ab0e57b0aeb42cdf7ba9c))

## [1.2.0](https://github.com/batinicaz/oci-core/compare/v1.1.0...v1.2.0) (2023-07-10)


### Features

* deploy core network vpc ([5d25b00](https://github.com/batinicaz/oci-core/commit/5d25b00f6c80ea94ede2dcbd0573ff00f34f535c))


### Bug Fixes

* do not remove labels when auto merging pr to prevent release loop ([23c856e](https://github.com/batinicaz/oci-core/commit/23c856e6b995f2849e91bb209a3b30f152d8d1a2))
* set root compartment id for creating new compartment ([56df2ed](https://github.com/batinicaz/oci-core/commit/56df2ed16130f5a817949f32094a6c8345fe9178))

## 1.1.0 (2023-07-09)


### Features

* create core network ([64e92e3](https://github.com/batinicaz/oci-core/commit/64e92e3871a56d5e738177157277f5ccefb862e5))


### Bug Fixes

* add missing quote ([af91922](https://github.com/batinicaz/oci-core/commit/af91922ea519ce30e2ace5d5adeb0569dd3034aa))
* allow apply of release tags ([55e369c](https://github.com/batinicaz/oci-core/commit/55e369c7861477a03c5545dfc15cf6e98de3aec2))
* auto run release on pr merge ([f3431c5](https://github.com/batinicaz/oci-core/commit/f3431c546ecdf7c13bd4d94814676ef25e40886a))
* ensure tag is pushed post release ([5358337](https://github.com/batinicaz/oci-core/commit/5358337d59c788aa37471bcccbd395271a8f95ee))
* ensure token variable used ([df46c08](https://github.com/batinicaz/oci-core/commit/df46c08610287b2b4c41f06184dbf623bb2e9e44))
* get pr info without pr details in github event ([6efa735](https://github.com/batinicaz/oci-core/commit/6efa735d2fa6b397f98136124edac696c4325c24))
* handle pr with no labels ([5a13e45](https://github.com/batinicaz/oci-core/commit/5a13e45c160a54b3ab33c9045e9bbc8e49ab1225))
* increase wait time for auto merge ([0ba7d4d](https://github.com/batinicaz/oci-core/commit/0ba7d4d6d33cbfdea8d75728d30863b5a4815001))
* move to standard version GHA to cut release ([b115366](https://github.com/batinicaz/oci-core/commit/b11536698cf03c167ad51a88e2adda72a36dc670))
* only push tags in release ([44a4ed2](https://github.com/batinicaz/oci-core/commit/44a4ed25cc258a2e7bdaecce7700eee78e016448))
* only run release for prs that are not auto releases to prevent infinite loop ([230b941](https://github.com/batinicaz/oci-core/commit/230b9416b14401a3cd1265e5657b949c37d5b610))
* pull full history for creating next tag ([eacbf44](https://github.com/batinicaz/oci-core/commit/eacbf444628c71746bece6d51b5abe70eff0ff94))
* raise and merge release PR ([f462b5a](https://github.com/batinicaz/oci-core/commit/f462b5a72662b6d007e630762ae1393488ada69d))
* remove debug logging + store labels in env var to avoid deprication warning ([cf39157](https://github.com/batinicaz/oci-core/commit/cf391571acb23c8611ff4579d8d308dbdedd3fec))
* remove plan_only for deployment job ([e92a191](https://github.com/batinicaz/oci-core/commit/e92a191dba47a560cb858dc5b4f41446a17daa99))
* set correct email for gha bot ([6dd4ade](https://github.com/batinicaz/oci-core/commit/6dd4ade85a6599f9426006571a9aa7ad46999fdb))
* set permission on app token ([cc6510d](https://github.com/batinicaz/oci-core/commit/cc6510d2945e0e72b942f11a77fddf91ba7d8990))
* show event info and allow reading of repo ([55952dd](https://github.com/batinicaz/oci-core/commit/55952ddfe2b92437d34742afc1d62eed627bf6d8))
* trigger for sem ver deploy ([6f4f4fc](https://github.com/batinicaz/oci-core/commit/6f4f4fc5106192895fa1947b616aea996976c3e7))
* use [] notation to access token output ([b8a49fb](https://github.com/batinicaz/oci-core/commit/b8a49fbec0a678b66d2e23f730be9fa87fdb4ab1))
* use app install id to generate token ([39e1243](https://github.com/batinicaz/oci-core/commit/39e12439e9fe0bc74fbdb07dcaa8afa05aad10e7))
* use github app token to create release so workflows can be triggered ([5cbafea](https://github.com/batinicaz/oci-core/commit/5cbafeaeccb43a012d0eb218746b92ce06b27d37))
* use github app token to get api info on pr ([8758ec4](https://github.com/batinicaz/oci-core/commit/8758ec4be32ace38278a1a902e93f2c40d3a77cf))
* use github token to approve release pr ([578a1b2](https://github.com/batinicaz/oci-core/commit/578a1b2fdfc31842b3eac062352211edd5cdd81b))
* use ssh deploy key to pull repo/push tags as app token not working ([9a8ed5a](https://github.com/batinicaz/oci-core/commit/9a8ed5aa84ac352baca5be3c8ad0ea9aa4579d2b))
* use the pulls api endpoint ([008d1b4](https://github.com/batinicaz/oci-core/commit/008d1b4cf7584dd15cfeba8b6ede74d40d89b9c0))
* use token instead of deployment key ([e6a7525](https://github.com/batinicaz/oci-core/commit/e6a75250b9ee0e37fda1f40628c0923cd7ce04d4))

### [1.0.2](https://github.com/batinicaz/oci-core/compare/v1.0.1...v1.0.2) (2023-07-09)


### Bug Fixes

* pull full history for creating next tag ([eacbf44](https://github.com/batinicaz/oci-core/commit/eacbf444628c71746bece6d51b5abe70eff0ff94))
* set permission on app token ([cc6510d](https://github.com/batinicaz/oci-core/commit/cc6510d2945e0e72b942f11a77fddf91ba7d8990))
* trigger for sem ver deploy ([6f4f4fc](https://github.com/batinicaz/oci-core/commit/6f4f4fc5106192895fa1947b616aea996976c3e7))
* use [] notation to access token output ([b8a49fb](https://github.com/batinicaz/oci-core/commit/b8a49fbec0a678b66d2e23f730be9fa87fdb4ab1))
* use app install id to generate token ([39e1243](https://github.com/batinicaz/oci-core/commit/39e12439e9fe0bc74fbdb07dcaa8afa05aad10e7))
* use github app token to create release so workflows can be triggered ([5cbafea](https://github.com/batinicaz/oci-core/commit/5cbafeaeccb43a012d0eb218746b92ce06b27d37))
* use ssh deploy key to pull repo/push tags as app token not working ([9a8ed5a](https://github.com/batinicaz/oci-core/commit/9a8ed5aa84ac352baca5be3c8ad0ea9aa4579d2b))
* use token instead of deployment key ([e6a7525](https://github.com/batinicaz/oci-core/commit/e6a75250b9ee0e37fda1f40628c0923cd7ce04d4))

### 1.0.1 (2023-07-09)
