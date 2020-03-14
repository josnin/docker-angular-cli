# docker-angular-cli #
Docker file for angular cli dev

## Mount App directory Host to Container, Use Host networks, ReadWrite Directory 
```bash
[josnin@localhost Document]$ pwd
/home/Document

[josnin@localhost Document]$ docker run -it --net=host --rm -v $(pwd):/app:z -w /app josnin/angular-cli bash
```

## Create new App 
```bash
[root@0b94c6aeb132 app]# ng new my-app
? Would you like to add Angular routing? Yes
? Which stylesheet format would you like to use? SCSS   [ https://sass-lang.com/documentation/syntax#scss                ]
CREATE my-app/README.md (1022 bytes)
CREATE my-app/.editorconfig (246 bytes)
CREATE my-app/.gitignore (631 bytes)
CREATE my-app/angular.json (3655 bytes)
CREATE my-app/package.json (1283 bytes)
CREATE my-app/tsconfig.json (489 bytes)
CREATE my-app/tslint.json (1953 bytes)
CREATE my-app/browserslist (429 bytes)
CREATE my-app/karma.conf.js (1018 bytes)
CREATE my-app/tsconfig.app.json (210 bytes)
CREATE my-app/tsconfig.spec.json (270 bytes)
CREATE my-app/src/favicon.ico (948 bytes)
CREATE my-app/src/index.html (291 bytes)
CREATE my-app/src/main.ts (372 bytes)
CREATE my-app/src/polyfills.ts (2835 bytes)
CREATE my-app/src/styles.scss (80 bytes)
CREATE my-app/src/test.ts (753 bytes)
CREATE my-app/src/assets/.gitkeep (0 bytes)
CREATE my-app/src/environments/environment.prod.ts (51 bytes)
CREATE my-app/src/environments/environment.ts (662 bytes)
CREATE my-app/src/app/app-routing.module.ts (246 bytes)
CREATE my-app/src/app/app.module.ts (393 bytes)
CREATE my-app/src/app/app.component.scss (0 bytes)
CREATE my-app/src/app/app.component.html (25755 bytes)
CREATE my-app/src/app/app.component.spec.ts (1059 bytes)
CREATE my-app/src/app/app.component.ts (211 bytes)
CREATE my-app/e2e/protractor.conf.js (808 bytes)
CREATE my-app/e2e/tsconfig.json (214 bytes)
CREATE my-app/e2e/src/app.e2e-spec.ts (639 bytes)
CREATE my-app/e2e/src/app.po.ts (301 bytes)
```

## Running your App nside container 
```bash
[root:0b94c6aeb132 app]# cd my-app
[root:0b94c6aeb132 my-app]# ng serve --host 192.168.1.120 --port 4300
Your global Angular CLI version (9.0.6) is greater than your local
version (8.3.3). The local Angular CLI version is used.

To disable this warning use "ng config -g cli.warnings.versionMismatch false".
WARNING: This is a simple server for use in testing or debugging Angular applications
locally. It hasn't been reviewed for security issues.

Binding this server to an open connection can result in compromising your application or
computer. Using a different host than the one passed to the "--host" flag might result in
websocket connection issues. You might need to use "--disableHostCheck" if that's the
case.
10% building 3/3 modules 0 activeℹ ｢wds｣: Project is running at http://192.168.1.120:4300/webpack-dev-server/
ℹ ｢wds｣: webpack output is served from /
ℹ ｢wds｣: 404s will fallback to //index.html

chunk {main} main.js, main.js.map (main) 361 kB [initial] [rendered]
chunk {polyfills} polyfills.js, polyfills.js.map (polyfills) 273 kB [initial] [rendered]
chunk {runtime} runtime.js, runtime.js.map (runtime) 6.15 kB [entry] [rendered]
chunk {styles} styles.js, styles.js.map (styles) 401 kB [initial] [rendered]
chunk {vendor} vendor.js, vendor.js.map (vendor) 7.81 MB [initial] [rendered]
Date: 2020-03-14T01:03:22.511Z - Hash: aa37d78e082a9bdf3835 - Time: 150815ms
** Angular Live Development Server is listening 

```

## Running App outside container

```
[josnin@localhost my-app]$ docker run -it --rm -v $(pwd):/home/my-app:z -w /home/my-app josnin/angular-cli bash -c "ng serve --open"
0% compiling
Compiling @angular/core : es2015 as esm2015

Compiling @angular/common : es2015 as esm2015

Compiling @angular/platform-browser : es2015 as esm2015

Compiling @angular/platform-browser-dynamic : es2015 as esm2015

Compiling @angular/router : es2015 as esm2015

chunk {main} main.js, main.js.map (main) 60.6 kB [initial] [rendered]
chunk {polyfills} polyfills.js, polyfills.js.map (polyfills) 140 kB [initial] [rendered]
chunk {runtime} runtime.js, runtime.js.map (runtime) 6.15 kB [entry] [rendered]
chunk {styles} styles.js, styles.js.map (styles) 9.99 kB [initial] [rendered]
chunk {vendor} vendor.js, vendor.js.map (vendor) 2.99 MB [initial] [rendered]
Date: 2020-03-13T17:42:56.528Z - Hash: 28d1399e5f8fe8eb28c6 - Time: 153279ms
** Angular Live Development Server is listening on localhost:4200, open your browser on http://localhost:4200/ **
: Compiled successfully.


```



#reference
https://stackoverflow.com/questions/24288616/permission-denied-on-accessing-host-directory-in-docker
