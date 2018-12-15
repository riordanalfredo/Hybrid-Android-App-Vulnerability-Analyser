.class public Lorg/apache/cordova/engine/SystemWebViewEngine;
.super Ljava/lang/Object;
.source "SystemWebViewEngine.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine;


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemWebViewEngine"


# instance fields
.field protected bridge:Lorg/apache/cordova/CordovaBridge;

.field protected client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

.field protected final cookieManager:Lorg/apache/cordova/engine/SystemCookieManager;

.field protected cordova:Lorg/apache/cordova/CordovaInterface;

.field protected nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

.field protected parentWebView:Lorg/apache/cordova/CordovaWebView;

.field protected pluginManager:Lorg/apache/cordova/PluginManager;

.field protected preferences:Lorg/apache/cordova/CordovaPreferences;

.field private receiver:Landroid/content/BroadcastReceiver;

.field protected resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field protected final webView:Lorg/apache/cordova/engine/SystemWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    .line 76
    new-instance v0, Lorg/apache/cordova/engine/SystemWebView;

    invoke-direct {v0, p1}, Lorg/apache/cordova/engine/SystemWebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/cordova/engine/SystemWebViewEngine;-><init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/CordovaPreferences;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebView;)V
    .locals 1
    .param p1, "webView"    # Lorg/apache/cordova/engine/SystemWebView;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;-><init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/CordovaPreferences;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 1
    .param p1, "webView"    # Lorg/apache/cordova/engine/SystemWebView;
    .param p2, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 85
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    .line 86
    new-instance v0, Lorg/apache/cordova/engine/SystemCookieManager;

    invoke-direct {v0, p1}, Lorg/apache/cordova/engine/SystemCookieManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->cookieManager:Lorg/apache/cordova/engine/SystemCookieManager;

    .line 87
    return-void
.end method

.method private enableRemoteDebugging()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 246
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SystemWebViewEngine"

    const-string v2, "You have one job! To turn on Remote Web Debugging! YOU HAVE FAILED! "

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private static exposeJsInterface(Landroid/webkit/WebView;Lorg/apache/cordova/CordovaBridge;)V
    .locals 3
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "bridge"    # Lorg/apache/cordova/CordovaBridge;

    .prologue
    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 255
    const-string v1, "SystemWebViewEngine"

    const-string v2, "Disabled addJavascriptInterface() bridge since Android version is old."

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    new-instance v0, Lorg/apache/cordova/engine/SystemExposedJsApi;

    invoke-direct {v0, p1}, Lorg/apache/cordova/engine/SystemExposedJsApi;-><init>(Lorg/apache/cordova/CordovaBridge;)V

    .line 262
    .local v0, "exposedJsApi":Lorg/apache/cordova/engine/SystemExposedJsApi;
    const-string v1, "_cordovaNative"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initWebViewSettings()V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v10, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/cordova/engine/SystemWebView;->setInitialScale(I)V

    .line 145
    iget-object v10, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/cordova/engine/SystemWebView;->setVerticalScrollBarEnabled(Z)V

    .line 147
    iget-object v10, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v10}, Lorg/apache/cordova/engine/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    .line 148
    .local v9, "settings":Landroid/webkit/WebSettings;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 149
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 150
    sget-object v10, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 154
    :try_start_0
    const-class v10, Landroid/webkit/WebSettings;

    const-string v11, "setNavDump"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 156
    .local v5, "gingerbread_getMethod":Ljava/lang/reflect/Method;
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 157
    .local v7, "manufacturer":Ljava/lang/String;
    const-string v10, "SystemWebViewEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CordovaWebView is running on device made by: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-ge v10, v11, :cond_0

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v11, "HTC"

    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 161
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 174
    .end local v5    # "gingerbread_getMethod":Ljava/lang/reflect/Method;
    .end local v7    # "manufacturer":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 175
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 179
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_1

    .line 180
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 182
    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v10, v11, :cond_2

    .line 183
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 187
    :cond_2
    iget-object v10, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v10}, Lorg/apache/cordova/engine/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "database"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "databasePath":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 189
    invoke-virtual {v9, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 193
    iget-object v10, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v10}, Lorg/apache/cordova/engine/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 194
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_3

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-lt v10, v11, :cond_3

    .line 196
    invoke-direct {p0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->enableRemoteDebugging()V

    .line 199
    :cond_3
    invoke-virtual {v9, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 202
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 205
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 209
    const-wide/32 v10, 0x500000

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 210
    invoke-virtual {v9, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 211
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 215
    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "defaultUserAgent":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v11, "OverrideUserAgent"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, "overrideUserAgent":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 220
    invoke-virtual {v9, v8}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 229
    :cond_4
    :goto_1
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v10, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v10, :cond_5

    .line 232
    new-instance v10, Lorg/apache/cordova/engine/SystemWebViewEngine$2;

    invoke-direct {v10, p0, v9}, Lorg/apache/cordova/engine/SystemWebViewEngine$2;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;Landroid/webkit/WebSettings;)V

    iput-object v10, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->receiver:Landroid/content/BroadcastReceiver;

    .line 238
    iget-object v10, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v10}, Lorg/apache/cordova/engine/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    :cond_5
    return-void

    .line 163
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "databasePath":Ljava/lang/String;
    .end local v3    # "defaultUserAgent":Ljava/lang/String;
    .end local v6    # "intentFilter":Landroid/content/IntentFilter;
    .end local v8    # "overrideUserAgent":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 164
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "SystemWebViewEngine"

    const-string v11, "We are on a modern version of Android, we will deprecate HTC 2.3 devices in 2.8"

    invoke-static {v10, v11}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .line 166
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "SystemWebViewEngine"

    const-string v11, "Doing the NavDump failed with bad arguments"

    invoke-static {v10, v11}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 168
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string v10, "SystemWebViewEngine"

    const-string v11, "This should never happen: IllegalAccessException means this isn\'t Android anymore"

    invoke-static {v10, v11}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 170
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v10, "SystemWebViewEngine"

    const-string v11, "This should never happen: InvocationTargetException means this isn\'t Android anymore."

    invoke-static {v10, v11}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "databasePath":Ljava/lang/String;
    .restart local v3    # "defaultUserAgent":Ljava/lang/String;
    .restart local v8    # "overrideUserAgent":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v11, "AppendUserAgent"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "appendUserAgent":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/engine/SystemWebView;->clearCache(Z)V

    .line 287
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->clearHistory()V

    .line 292
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 328
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    iget-object v1, v1, Lorg/apache/cordova/engine/SystemWebView;->chromeClient:Lorg/apache/cordova/engine/SystemWebChromeClient;

    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebChromeClient;->destroyLastDialog()V

    .line 329
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebView;->destroy()V

    .line 331
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 333
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemWebViewEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering configuration receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p1, "js"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/engine/SystemWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    const-string v0, "SystemWebViewEngine"

    const-string v1, "This webview is using the old bridge"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCookieManager()Lorg/apache/cordova/ICordovaCookieManager;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->cookieManager:Lorg/apache/cordova/engine/SystemCookieManager;

    return-object v0
.end method

.method public getCordovaWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    return-object v0
.end method

.method public goBack()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->goBack()V

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 2
    .param p1, "parentWebView"    # Lorg/apache/cordova/CordovaWebView;
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p3, "client"    # Lorg/apache/cordova/CordovaWebViewEngine$Client;
    .param p4, "resourceApi"    # Lorg/apache/cordova/CordovaResourceApi;
    .param p5, "pluginManager"    # Lorg/apache/cordova/PluginManager;
    .param p6, "nativeToJsMessageQueue"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    if-nez v0, :cond_1

    .line 98
    invoke-interface {p1}, Lorg/apache/cordova/CordovaWebView;->getPreferences()Lorg/apache/cordova/CordovaPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 100
    :cond_1
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    .line 101
    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 102
    iput-object p3, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    .line 103
    iput-object p4, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 104
    iput-object p5, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 105
    iput-object p6, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 106
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0, p0, p2}, Lorg/apache/cordova/engine/SystemWebView;->init(Lorg/apache/cordova/engine/SystemWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V

    .line 108
    invoke-direct {p0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->initWebViewSettings()V

    .line 110
    new-instance v0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;

    new-instance v1, Lorg/apache/cordova/engine/SystemWebViewEngine$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/engine/SystemWebViewEngine$1;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    invoke-direct {v0, v1}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;)V

    invoke-virtual {p6, v0}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_2

    .line 121
    new-instance v0, Lorg/apache/cordova/NativeToJsMessageQueue$EvalBridgeMode;

    invoke-direct {v0, p0, p2}, Lorg/apache/cordova/NativeToJsMessageQueue$EvalBridgeMode;-><init>(Lorg/apache/cordova/CordovaWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V

    invoke-virtual {p6, v0}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 122
    :cond_2
    new-instance v0, Lorg/apache/cordova/CordovaBridge;

    invoke-direct {v0, p5, p6}, Lorg/apache/cordova/CordovaBridge;-><init>(Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    .line 123
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    invoke-static {v0, v1}, Lorg/apache/cordova/engine/SystemWebViewEngine;->exposeJsInterface(Landroid/webkit/WebView;Lorg/apache/cordova/CordovaBridge;)V

    .line 124
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "clearNavigationStack"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public setPaused(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->onPause()V

    .line 319
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->pauseTimers()V

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->onResume()V

    .line 322
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->resumeTimers()V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->stopLoading()V

    .line 282
    return-void
.end method
