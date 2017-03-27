# nanjizalOnElectron

## Build steps on Mac

1) install latest Node, NPM and Haxe, setup haxelib.

    `https://nodejs.org/en/`

    `https://haxe.org/download/file/3.4.2/haxe-3.4.2-osx-installer.pkg/`

2) You might need to change permissions on Sierra for npm?

    `sudo chown -R $USER /usr/local`

3) Install electron and electron-packager.

    `npm install electron -g`

    `npm install electron-packager -g`

4) Install haxelibs

    `haxelib git electron https://github.com/fponticelli/hxelectron.git`

    `haxelib git htmlHelper https://github.com/nanjizal/htmlHelper.git`

    `haxelib git hxnodejs https://github.com/haxefoundation/hxnodejs.git`

    `haxelib git thx.core https://github.com/fponticelli/thx.core.git`

5) Use hxElectron to build the electron externs that must be added to the src folder see **buildElectronModule.hxml**

6) compile and test project.

    `haxe compile.hxml`

7) build project for mac

   `haxe compileApp.hxml`
