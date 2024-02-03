---
title: MIDI-MT - API Модуля «Панель дистанционного управления»
subtitle: MIDI-MT Документация на Русском языке
author: MIDI-MT &#169; CC
keywords: usb,midi,control,surface,keyboard,easycontrol,easycontrol9,mqtt,lights,dmx,dmx512,artnet,soundbar,premiere pro,proxy,driver
description: MIDI-MT - это драйвер приложений высокого уровня, для USB MIDI панелей управлений
---

## API дистанционного управления

- [Запросы клиента](#запросы-клиента)  

- [Ответы сервера](#ответы-сервера)  

- [Пример JavaScript Web Socket приложения](#пример-javascript-web-socket-приложения)  

- [Файлы конфигурации](Settings-Configuration-files.html)  

Вы можете самостоятельно использовать «**API**» модуля дистанционного управления в сценариях в различных средах выполнения. Транспортом взаимодействия с «**MIDI-MT**» является `Web Socket`, команды и ответы имеют формат `Json`.
Связь реализована только по протоколу `HTTP`, то есть поддерживается только стандартный префикс `ws://`.
Решение рассчитано на работу в локальной сети. При необходимости, для доступа по протоколу `HTTPS`, можно поставить любой фронт-енд с поддержкой [`HTTPS Web Socket`](https://www.nginx.com/blog/realtime-applications-nginx/), например [`nginx`](https://nginx.org/en/docs/http/websocket.html).

### Запросы клиента

- `"action": "config"` - запрос конфигурации у сервера. Подразумевает ответ в виде структуры секции «units» из текущей конфигурации сервера.
```yaml
{ 
   "action": "config" 
}
```

- `"action": "change"` - отправка изменений параметров контрола. Отсылаемые параметры контрола, как то:  `scene`, `id`, `type`, `target`, `longtarget` - должны соответствовать параметрам в конфигурации сервера.
```yaml
{ 
   "action": "change",
   "unit": {
       "scene":xxx,           // сцена контрола
       "id":xx,               // номер контрола
       "type":x,              // тип контрола
       "target":xxx,          // группа | назначение
       "longtarget":xxx,      // назначение
       "onoff": true | false, // новое значение
       "value": 0-127         // новое значение
   }
}
```

- `"action": "wakeup"` - запрос на выход сервера из «спящего режима». В некоторых случаях, в `Windows 10/11`, в «спящем режиме» отключаются часть аудио источников и `USB` устройств.
```yaml
{ 
   "action": "wakeup"
}
```

- `"action": "windowtotop"` - отправка имени файла приложения, которое необходимо поместить на передний план. Необходимо для использования мультимеда кнопок управления воспроизведением.
```yaml
{ 
   "action": "windowtotop",
   "name": "application-file-name.exe"
}
```

- `"action": "getlog"` - отправка актуального лог файла в формате `Base64`.
```yaml
{ 
   "action": "getlog"
}
```

### Ответы сервера
Все ответы сервера, так же как и запросы выполняются в `Json` контейнере.

- при «отправке измененых параметров», «запросе на выход сервера из спящего режима» и «отправке имени файла приложения»
 ответы со стороны сервера не предусмотрены.

- на «запрос конфигурации у сервера» - отправляется полная конфигурация секции `units` из [файла конфигурации](Settings-Configuration-files.html).
```json
{ 
   "action": "config", 
   "units":[
       {"scene":177,"id":22,"type":0,"target":0,"longtarget":255,"onoff":false,"value":64},
       {"scene":177,"id":13,"type":1,"target":1,"longtarget":255,"onoff":true,"value":107,"app":["App1","App2"]},
       ...
   ]
}
```

- на «запрос отправки лог файла» - отправляется актуальный на текущий момент лог файл в формате `Base64`:
```json
{ 
   "action": "getlog",
   "log": "BASE64-content"
}
```

- `"action": "changed"` - отправляется в случае изменения параметров контрола (`unit`). Генерируется сервером.
```json
{ 
   "action": "changed",
   "unit": {
       "scene":177,
       "id":22,
       "type":0,
       "target":0,
       "longtarget":255,
       "onoff": true,
       "value": 127
   }
}
```

### Пример JavaScript Web Socket приложения

«IP адрес» и «порт» в приложении должны соответствовать текущей [конфигурации](Settings-Module-Remote.html) работающего сервера.
```json
    "remote": {
        "port": 8888,
        "host": "x.x.x.x",
        ...
    },
```

```javascript
let socket = new WebSocket("ws://x.x.x.x:8888");

socket.onopen = function(e) {
  console.log("[open] Connection established, request configuration from server...");
  socket.send(JSON.stringify({ "action": "config" }));
};

socket.onmessage = function(event) {
  console.log("[message]", JSON.parse(event.data));
};

socket.onclose = function(event) {
  if (event.wasClean) {
    alert(`[close] Connection closed cleanly, code=${event.code} reason=${event.reason}`);
  } else {
    // server process killed or network down
    // event.code is usually 1006 in this case
    console.log("[close] Connection died");
  }
};

socket.onerror = function(error) {
  console.log(`[error]`);
};
```

Подробнее о программировании [JavaScript Web Socket](https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API/Writing_WebSocket_client_applications) на **MDN Web docs**.

