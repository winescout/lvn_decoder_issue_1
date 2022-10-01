# lvn_decoder_issue_1

Deeply nested for loops in heex templates cause a Fatal error, and app crash.  

## Included in this sample code
1. basic Swift project, based off of the lvn tutorial
2. Phoenix project with 1 live view demonstrating the issue

## The error

```
[LiveViewCoordinator] [Socket] SwiftPhoenixClient: push, Sending ["11","11","lv:phx-FxoJQek2q-didQCh","phx_join",{"session":"SFMyNTY.g2gDaAJhBXQAAAAIZAACaWRtAAAAFHBoeC1GeG9KUWVrMnEtZGlkUUNoZAAMbGl2ZV9zZXNzaW9uaAJkAAdkZWZhdWx0bggAOtxYzOoIGhdkAApwYXJlbnRfcGlkZAADbmlsZAAIcm9vdF9waWRkAANuaWxkAAlyb290X3ZpZXdkABlFbGl4aXIuUGh4QXBwV2ViLlBhZ2VMaXZlZAAGcm91dGVyZAAXRWxpeGlyLlBoeEFwcFdlYi5Sb3V0ZXJkAAdzZXNzaW9udAAAAABkAAR2aWV3ZAAZRWxpeGlyLlBoeEFwcFdlYi5QYWdlTGl2ZW4GAC3nD5WDAWIAAVGA.u5GKXr0YAVNcvzBKQoe1chqMX6gxA3y4I7LrqLrg688","static":"SFMyNTY.g2gDaAJhBXQAAAADZAAKYXNzaWduX25ld2pkAAVmbGFzaHQAAAAAZAACaWRtAAAAFHBoeC1GeG9KUWVrMnEtZGlkUUNobgYALecPlYMBYgABUYA.aaMaoghUMnkDAe-sdmWS1Fa2cc8jgkdEZ0jAI08ZmZo","url":"http:\/\/localhost:4000\/page","params":{"_csrf_token":"FwMIWlg1CjktCioRGGdKAGEsXAojC3Itvbb6lL3aE_GKBTxqXnldpgEx","_mounts":0,"_platform":"ios"}}]
2022-10-01 12:39:50.966507-0700 decoder_bug_ios[20933:2864482] [LiveViewCoordinator] [Socket] SwiftPhoenixClient: receive , ["11","11","lv:phx-FxoJQek2q-didQCh","phx_reply",{"response":{"rendered":{"0":{"0":{"d":[["1","1",{"d":[["1","1",{"d":[["1","1"],["2","1"],["3","1"]],"s":0}],["2","2",{"d":[["1","2"],["2","2"],["3","2"]],"s":0}],["3","3",{"d":[["1","3"],["2","3"],["3","3"]],"s":0}]],"s":1}],["2","2",{"d":[["1","1",{"d":[["1","1"],["2","1"],["3","1"]],"s":0}],["2","2",{"d":[["1","2"],["2","2"],["3","2"]],"s":0}],["3","3",{"d":[["1","3"],["2","3"],["3","3"]],"s":0}]],"s":1}],["3","3",{"d":[["1","1",{"d":[["1","1"],["2","1"],["3","1"]],"s":0}],["2","2",{"d":[["1","2"],["2","2"],["3","2"]],"s":0}],["3","3",{"d":[["1","3"],["2","3"],["3","3"]],"s":0}]],"s":1}]],"p":{"0":["\n          <text id=\"c_","\">c: ","</text>\n        "],"1":["\n        <text id=\"b_","\">b: ","</text>\n        ","\n      "]},"s":["\n      <text id=\"a_","\">a: ","</text>\n      ","\n    "]},"s":["<vstack>\n    ","\n  </vstack>"]},"s":["",""]}},"status":"ok"}]
PhoenixLiveViewNative/Fragment.swift:282: Fatal error: Static cannot reference template when templates are not provided
2022-10-01 12:39:50.968780-0700 decoder_bug_ios[20933:2863242] PhoenixLiveViewNative/Fragment.swift:282: Fatal error: Static cannot reference template when templates are not provided
```
