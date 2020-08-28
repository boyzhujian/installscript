git clone https://github.com/pnhoang/safaribooks


use  below in console to get cookies.json
```
javascript:(function(){var output={};document.cookie.split(/\s*;\s*/).forEach(function(pair){pair=pair.split(/\s*=\s*/);output[pair[0]]=pair.splice(1).join('=')});var a=window.document.createElement('a');a.href=window.URL.createObjectURL(new Blob([JSON.stringify(output)],{type:'text/json'}));a.download='cookies.json';document.body.appendChild(a);a.click();document.body.removeChild(a)})()

```

run 

python3  safaribooks.py 9781789610703
