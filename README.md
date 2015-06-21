# Haskell + Node.js Minimal Sample
Demonstrates a minimal code to produce a working (JavaScript only) nodejs application, also showing off how to depend on other nodejs modules.

## Basic test, no JS specific stuff.
This is easily done following the ghcjs doc, the Usage section:
https://github.com/ghcjs/ghcjs

Create a standard Haskell executable project with cabal.

Create a Main.hs module, put a basic Hello World output into main.

Build with: ghcjs -o hello src/Main.hs

Test with: node hello.jsexe/all.js

## Now make JavaScript calls via FFI
Just import a standard node module and call a function like this in JavaScript:

var os = require("os");
console.log(os.hostname());

Inspiration from:
http://weblog.luite.com/wordpress/
https://nodejs.org/api/os.html

