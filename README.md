# script-to-init-a-project

This is a shell scrip to init a basic HTML / JavaScript / SCSS project.

npm script are not generated so just replace the script in the package.json by

```JSON
"scripts": {
    "dev": "parcel src/index.html",
    "build": "parcel build src/index.html"
  }
```

Once the project is created and ready to be pushed you'll only need to run

```shell
git add *
```

```shell
git commit "first commit'
```

```shell
git remote add origin $remoteURL
```

```shell
git push -u origin master
```
