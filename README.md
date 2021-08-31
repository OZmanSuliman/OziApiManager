# OziApiManager

Ozi APi Manager is a swift package to manage API calls in a simple way

## USAGE
simple get method:
```
    let api = ApiManager()
        api.getMethod(url: "") {  response, error, statusCode in
            // handle success
        } withapiFiluer: { error in
            // handle error
        }
```
