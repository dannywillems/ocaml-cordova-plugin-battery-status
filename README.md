# ocaml-cordova-plugin-batterystatus

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-battery-status/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-battery-status.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-battery-status)

Binding to
[cordova-plugin-batterystatus](https://github.com/apache/cordova-plugin-batterystatus)

## What does cordova-plugin-batterystatus do ?

```
This plugin provides an implementation of an old version of the Battery Status Events API.
It adds the following three events to the window object:
* batterystatus
* batterycritical
* batterylow
```

Source: [cordova-plugin-batterystatus](https://github.com/apache/cordova-plugin-batterystatus)

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

* If you added
[ocaml-cordova-plugin-list](https://github.com/dannywillems/ocaml-cordova-plugin-list)
as opam package provider, you can use
```
opam install cordova-plugin-battery-status
```

* Else, you can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-battery-status https://github.com/dannywillems/ocaml-cordova-plugin-battery-status.git
```

To compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-battery-status [...] -linkpkg [other arguments]
```

Don't forget to install cordova-plugin-batterystatus with
```Shell
cordova plugin add cordova-plugin-batterystatus
```

## How to use ?

* See the [official documentation](https://github.com/apache/cordova-plugin-batterystatus)
