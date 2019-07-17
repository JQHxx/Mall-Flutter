import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/**
 * 客服
 */
class ServerPage extends StatelessWidget {

  String url = "https://www.baidu.com";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('客服'),
      ),
      body: WebView(
            initialUrl: url, // 加载的url
            onWebViewCreated: (WebViewController web) {
              // webview 创建调用，
            // web.loadUrl(url);// 此时也可以初始化一个url
            web.canGoBack().then((res){
                print(res); // 是否能返回上一级
             });
             web.currentUrl().then((url){
               print(url);// 返回当前url
             });
             web.canGoForward().then((res){
               print(res); //是否能前进
             });
            },
            onPageFinished: (String value) {
              // webview 页面加载调用
            },
          ),
    );
  }

}