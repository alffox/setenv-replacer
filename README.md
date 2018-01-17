# Setenv-Replacer

## Overview

Currently, Liferay bundles are publicly shared with these 2 JVM arguments in the setenv.sh/bat file: `-Xmx1024m -XX:MaxPermSize=384m`

`-Xmx1024m` is a too low value, while `-XX:MaxPermSize=384m` is not applicable to Java 8 

The purpose of this small project is to offer a tool that replaces the above JVM values with just `-Xmx2048m` in Liferay Tomcat vanilla bundles, just with a single action.

## How to run the tool ?

1) If you are running the Liferay bundle on Linux or Mac OS, download [setenv-replacer.sh](https://github.com/alffox/setenv-replacer/blob/master/setenv-replacer.sh), else, if you have a Windows OS, download [setenv-replacer.vbs](https://github.com/alffox/setenv-replacer/blob/master/setenv-replacer.vbs)

2) Place the file in the Liferay home directory of your bundle

3) Open a terminal (Linux) or command prompt (Windows)

4) Run `/.setenv-replacer.sh` (Linux - MacOS) or `cscript setenv-replacer.vbs` (Windows)

5) Once the tool completes its job, a `Success !` message will be printed in the console

Use the tool at your own risk, as it overrides the file without any prompts

## How to contribute

 1. [Fork](http://help.github.com/forking/) the repo on GitHub
 2. [Clone](https://help.github.com/articles/cloning-a-repository/) the project to your own machine
 3. [Commit](https://help.github.com/articles/adding-a-file-to-a-repository-using-the-command-line/) changes to your own branch
 4. Push your work back up to your fork
 5. [Submit a Pull request](https://help.github.com/articles/creating-a-pull-request/) so that your changes can be reviewed

Note: Pull requests commit messages have to adhere to these rules: [https://udacity.github.io/git-styleguide/](https://udacity.github.io/git-styleguide/)

## Reporting bugs & Requesting Features

Report bugs here: https://github.com/alffox/setenv-replacer/issues
