# docker-angular-cli
Docker file for angular cli dev

# Create New App

[josnin@localhost home]$ pwd
/home

[josnin@localhost home]$ docker run -it --rm -v $(pwd):/home:z -w /home josnin/angular-cli bash
[root@0b94c6aeb132 home]# ng new my-app
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


#RUN App

[josnin@localhost my-app]$ docker run -it --rm -v $(pwd):/home/my-app:z -w /home/my-app josnin/angular-cli bash -c "ng serve --open"
0% compiling
Compiling @angular/core : es2015 as esm2015

Compiling @angular/common : es2015 as esm2015

Compiling @angular/platform-browser : es2015 as esm2015

Compiling @angular/platform-browser-dynamic : es2015 as esm2015



#reference
https://stackoverflow.com/questions/24288616/permission-denied-on-accessing-host-directory-in-docker
