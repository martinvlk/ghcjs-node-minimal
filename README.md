# Haskell + Node.js Minimal Sample
Demonstrates a minimal Haskell code to produce a working (JavaScript only) nodejs application, also showing off how to depend on other nodejs modules.

We are basically writing an equivalent to this JavaScript code:

```javascript
var os = require("os");
console.log(os.hostname());
```

##To build
* First install ghcjs according to [GHCJS doc](https://github.com/ghcjs/ghcjs).
* Clone this project.
* run `ghcjs -o test src/Main.hs`

##To run
* You need [nodejs installed](https://nodejs.org/download/)
* Then run: `node test.jsexe/all.js`

##Resources
* http://weblog.luite.com/wordpress/
* https://nodejs.org/api/os.html

