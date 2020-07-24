#!/bin/bash

echo ""
echo "Bienvenido a Genesys PIC"
echo ""
echo "no haga cagadas por favor"
echo "========================="
echo ""
echo ""
echo "Ingresando al Sistema..."
# Me logueo en GA

curl 'https://pwpicpacapp1/wcm/LoginEJS.aspx' \
-silent \
--cookie-jar "./cookies.txt" \
  -H 'Connection: keep-alive' \
  -H 'Cache-Control: max-age=0' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'Origin: https://pwpicpacapp1' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'Sec-Fetch-Mode: navigate' \
  -H 'Sec-Fetch-User: ?1' \
  -H 'Sec-Fetch-Dest: document' \
  -H 'Referer: https://pwpicpacapp1/wcm/LoginEJS.aspx' \
  -H 'Accept-Language: es-ES,es;q=0.9,en;q=0.8,pt;q=0.7,gl;q=0.6' \
  --data-raw '__VIEWSTATE=%2FwEPDwUKMjA5NDQzMTYxM2Rkmz8zzgjPHUeI%2ByvEH8yjxEftfDc%3D&__VIEWSTATEGENERATOR=7D7E9845&__EVENTVALIDATION=%2FwEWDALD7OCRDAK2yd7DCgLXhOmBBgLvuKGfAQL01pKfDgKvruq2CALSxeCRDwLHp4%2F6AgLK0IHXAQLvjO4YApOdptcOAoC0iMIE0nY9MElNACuXZryeojn4Aqdn0B0%3D&bannerAck=&bannerShown=&oldPassword=&resetPassword=&UserName=u527270&Password=Ghi%24%24671&NewPassword=&ConfirmPassword=&ApplicationName=default&Host=plpicpacapp66&Port=2020' \
  --compressed > /dev/null


echo "Esperando respuesta"

curl 'https://pwpicpacapp1/wcm/Presentation/Controls/Monitoring/GMonServices.asmx/GCfgGetObjsState' \
-silent \
-b cookies.txt \
  -H 'Connection: keep-alive' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36' \
  -H 'X-Requested-With: XMLHttpRequest' \
  -H 'Content-Type: application/json; charset=UTF-8' \
  -H 'Accept: */*' \
  -H 'Origin: https://pwpicpacapp1' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: https://pwpicpacapp1/wcm/default.aspx' \
  -H 'Accept-Language: es-ES,es;q=0.9,en;q=0.8,pt;q=0.7,gl;q=0.6' \
  --data-binary '{"objType":9,"folderDBID":219,"objDBID":"[402]"}' \
  --compressed \
  > /dev/null

sleep 5

curl 'https://pwpicpacapp1/wcm/Presentation/Controls/Monitoring/GMonServices.asmx/GCfgGetObjsState' \
  -b cookies.txt \
  -H 'Connection: keep-alive' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36' \
  -H 'X-Requested-With: XMLHttpRequest' \
  -H 'Content-Type: application/json; charset=UTF-8' \
  -H 'Accept: */*' \
  -H 'Origin: https://pwpicpacapp1' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: https://pwpicpacapp1/wcm/default.aspx' \
  -H 'Accept-Language: es-ES,es;q=0.9,en;q=0.8,pt;q=0.7,gl;q=0.6' \
  --data-binary '{"objType":9,"folderDBID":219,"objDBID":"[402]"}' \
  --compressed > result.txt 2>/dev/null

if ! grep -Fxq "Detenido" result.txt
then
        echo "El Servicio esta detenido"
        exit 1
else
        echo "El Servicio NO esta detenido"
fi
