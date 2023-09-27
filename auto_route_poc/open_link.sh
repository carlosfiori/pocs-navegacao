#! /bin/bash

adb shell 'am start -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d "http://example.com/home/pedidos"' com.example.navegacao
