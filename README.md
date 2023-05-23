# USAGE

## project structure
> web-app 

The main folder in which you store all hugo project is mandatory to be named as web-app. Jenkinsfile consist step named as **"Build-Hugo"** which prepare whole application to deploy. It assemble whole app and store it in folder **"public"**.

Briefly, Dockerfile copy all content from **"web-app"** to his container and return back **"public"**
folder with all assembled code. So it's very important to **do not** change name. It may cause implicit problems in future.
