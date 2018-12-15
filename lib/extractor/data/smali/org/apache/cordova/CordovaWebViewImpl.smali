.class public Lorg/apache/cordova/CordovaWebViewImpl;
.super Ljava/lang/Object;
.source "CordovaWebViewImpl.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final TAG:Ljava/lang/String; = "CordovaWebViewImpl"


# instance fields
.field private appPlugin:Lorg/apache/cordova/CoreAndroid;

.field private boundKeyCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cordova:Lorg/apache/cordova/CordovaInterface;

.field protected final engine:Lorg/apache/cordova/CordovaWebViewEngine;

.field private engineClient:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

.field private hasPausedEver:Z

.field private loadUrlTimeout:I

.field loadedUrl:Ljava/lang/String;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

.field private pluginManager:Lorg/apache/cordova/PluginManager;

.field private preferences:Lorg/apache/cordova/CordovaPreferences;

.field private resourceApi:Lorg/apache/cordova/CordovaResourceApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/cordova/CordovaWebViewImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaWebViewEngine;)V
    .locals 1
    .param p1, "cordovaWebViewEngine"    # Lorg/apache/cordova/CordovaWebViewEngine;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    .line 62
    new-instance v0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    invoke-direct {v0, p0}, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;)V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engineClient:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->boundKeyCodes:Ljava/util/Set;

    .line 86
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/PluginManager;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/CordovaWebViewImpl;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/CordovaWebViewImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/CordovaWebViewImpl;

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    return v0
.end method

.method static synthetic access$108(Lorg/apache/cordova/CordovaWebViewImpl;)I
    .locals 2
    .param p0, "x0"    # Lorg/apache/cordova/CordovaWebViewImpl;

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/CordovaInterface;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/CordovaWebViewImpl;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/cordova/CordovaWebViewImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/CordovaWebViewImpl;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->boundKeyCodes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/cordova/CordovaWebViewImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/CordovaWebViewImpl;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/cordova/CordovaWebViewImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/CordovaWebViewImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebViewImpl;->sendJavascriptEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static createEngine(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)Lorg/apache/cordova/CordovaWebViewEngine;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    .line 75
    const-string v4, "webview"

    const-class v5, Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 78
    .local v3, "webViewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lorg/apache/cordova/CordovaPreferences;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 79
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/cordova/CordovaWebViewEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 80
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "webViewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to create webview. "

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private sendJavascriptEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->appPlugin:Lorg/apache/cordova/CoreAndroid;

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    const-string v1, "CoreAndroid"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CoreAndroid;

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->appPlugin:Lorg/apache/cordova/CoreAndroid;

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->appPlugin:Lorg/apache/cordova/CoreAndroid;

    if-nez v0, :cond_1

    .line 345
    const-string v0, "CordovaWebViewImpl"

    const-string v1, "Unable to fire event without existing plugin"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->appPlugin:Lorg/apache/cordova/CoreAndroid;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CoreAndroid;->fireJavascriptEvent(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public backHistory()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->goBack()Z

    move-result v0

    return v0
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->clearCache()V

    .line 400
    return-void
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "b"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->clearCache()V

    .line 406
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->clearHistory()V

    .line 411
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCookieManager()Lorg/apache/cordova/ICordovaCookieManager;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getCookieManager()Lorg/apache/cordova/ICordovaCookieManager;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Lorg/apache/cordova/CordovaWebViewEngine;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    return-object v0
.end method

.method public getPluginManager()Lorg/apache/cordova/PluginManager;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    return-object v0
.end method

.method public getPreferences()Lorg/apache/cordova/CordovaPreferences;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object v0
.end method

.method public getResourceApi()Lorg/apache/cordova/CordovaResourceApi;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public handleDestroy()V
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 477
    :cond_0
    iget v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    .line 480
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0}, Lorg/apache/cordova/PluginManager;->onDestroy()V

    .line 484
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrl(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->destroy()V

    .line 488
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->hideCustomView()V

    goto :goto_0
.end method

.method public handlePause(Z)V
    .locals 2
    .param p1, "keepRunning"    # Z

    .prologue
    const/4 v1, 0x1

    .line 427
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iput-boolean v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->hasPausedEver:Z

    .line 431
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginManager;->onPause(Z)V

    .line 432
    const-string v0, "pause"

    invoke-direct {p0, v0}, Lorg/apache/cordova/CordovaWebViewImpl;->sendJavascriptEvent(Ljava/lang/String;)V

    .line 435
    if-nez p1, :cond_0

    .line 437
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebViewEngine;->setPaused(Z)V

    goto :goto_0
.end method

.method public handleResume(Z)V
    .locals 2
    .param p1, "keepRunning"    # Z

    .prologue
    .line 442
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebViewEngine;->setPaused(Z)V

    .line 448
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginManager;->onResume(Z)V

    .line 453
    iget-boolean v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->hasPausedEver:Z

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "resume"

    invoke-direct {p0, v0}, Lorg/apache/cordova/CordovaWebViewImpl;->sendJavascriptEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleStart()V
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0}, Lorg/apache/cordova/PluginManager;->onStart()V

    goto :goto_0
.end method

.method public handleStop()V
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0}, Lorg/apache/cordova/PluginManager;->onStop()V

    goto :goto_0
.end method

.method public hideCustomView()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 277
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 278
    :cond_0
    const-string v1, "CordovaWebViewImpl"

    const-string v2, "Hiding Custom View"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 285
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    .line 287
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 290
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public init(Lorg/apache/cordova/CordovaInterface;)V
    .locals 2
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/cordova/CordovaPreferences;

    invoke-direct {v1}, Lorg/apache/cordova/CordovaPreferences;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/cordova/CordovaWebViewImpl;->init(Lorg/apache/cordova/CordovaInterface;Ljava/util/List;Lorg/apache/cordova/CordovaPreferences;)V

    .line 92
    return-void
.end method

.method public init(Lorg/apache/cordova/CordovaInterface;Ljava/util/List;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 7
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p3, "preferences"    # Lorg/apache/cordova/CordovaPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/cordova/CordovaInterface;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/cordova/PluginEntry;",
            ">;",
            "Lorg/apache/cordova/CordovaPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "pluginEntries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/cordova/PluginEntry;>;"
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 100
    iput-object p3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 101
    new-instance v0, Lorg/apache/cordova/PluginManager;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-direct {v0, p0, v1, p2}, Lorg/apache/cordova/PluginManager;-><init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 102
    new-instance v0, Lorg/apache/cordova/CordovaResourceApi;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/CordovaResourceApi;-><init>(Landroid/content/Context;Lorg/apache/cordova/PluginManager;)V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 103
    new-instance v0, Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-direct {v0}, Lorg/apache/cordova/NativeToJsMessageQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 104
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$NoOpBridgeMode;

    invoke-direct {v1}, Lorg/apache/cordova/NativeToJsMessageQueue$NoOpBridgeMode;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 105
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-direct {v1, v2, p1}, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;-><init>(Lorg/apache/cordova/CordovaWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 107
    const-string v0, "DisallowOverscroll"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engineClient:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    iget-object v4, p0, Lorg/apache/cordova/CordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    iget-object v5, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    iget-object v6, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/cordova/CordovaWebViewEngine;->init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    .line 112
    sget-boolean v0, Lorg/apache/cordova/CordovaWebViewImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/cordova/CordovaWebViewEngine$EngineView;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    const-string v1, "CoreAndroid"

    const-string v2, "org.apache.cordova.CoreAndroid"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0}, Lorg/apache/cordova/PluginManager;->init()V

    .line 117
    return-void
.end method

.method public isButtonPlumbedToJs(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->boundKeyCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCustomViewShowing()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlIntoView(Ljava/lang/String;Z)V

    .line 199
    return-void
.end method

.method public loadUrlIntoView(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "recreatePlugins"    # Z

    .prologue
    const/4 v0, 0x0

    .line 126
    const-string v1, "CordovaWebViewImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> loadUrl("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "about:blank"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "javascript:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v1, p1, v0}, Lorg/apache/cordova/CordovaWebViewEngine;->loadUrl(Ljava/lang/String;Z)V

    .line 193
    :goto_0
    return-void

    .line 132
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadedUrl:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_2
    const/4 p2, 0x1

    .line 134
    :goto_1
    if-eqz p2, :cond_4

    .line 136
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadedUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->appPlugin:Lorg/apache/cordova/CoreAndroid;

    .line 138
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0}, Lorg/apache/cordova/PluginManager;->init()V

    .line 140
    :cond_3
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadedUrl:Ljava/lang/String;

    .line 144
    :cond_4
    iget v6, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    .line 145
    .local v6, "currentLoadUrlTimeout":I
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "LoadUrlTimeoutValue"

    const/16 v4, 0x4e20

    invoke-virtual {v0, v1, v4}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 148
    .local v2, "loadUrlTimeoutValue":I
    new-instance v7, Lorg/apache/cordova/CordovaWebViewImpl$1;

    invoke-direct {v7, p0, p1}, Lorg/apache/cordova/CordovaWebViewImpl$1;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;Ljava/lang/String;)V

    .line 167
    .local v7, "loadError":Ljava/lang/Runnable;
    new-instance v3, Lorg/apache/cordova/CordovaWebViewImpl$2;

    invoke-direct {v3, p0, v2, v6, v7}, Lorg/apache/cordova/CordovaWebViewImpl$2;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;IILjava/lang/Runnable;)V

    .line 184
    .local v3, "timeoutCheck":Ljava/lang/Runnable;
    move v5, p2

    .line 185
    .local v5, "_recreatePlugins":Z
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v0, Lorg/apache/cordova/CordovaWebViewImpl$3;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/CordovaWebViewImpl$3;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;ILjava/lang/Runnable;Ljava/lang/String;Z)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v2    # "loadUrlTimeoutValue":I
    .end local v3    # "timeoutCheck":Ljava/lang/Runnable;
    .end local v5    # "_recreatePlugins":Z
    .end local v6    # "currentLoadUrlTimeout":I
    .end local v7    # "loadError":Ljava/lang/Runnable;
    :cond_5
    move p2, v0

    .line 132
    goto :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 421
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginManager;->onNewIntent(Landroid/content/Intent;)V

    .line 424
    :cond_0
    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 377
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue;->addJavaScript(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public sendPluginResult(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V
    .locals 1
    .param p1, "cr"    # Lorg/apache/cordova/PluginResult;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/NativeToJsMessageQueue;->addPluginResult(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public setButtonPlumbedToJs(IZ)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "override"    # Z

    .prologue
    .line 353
    sparse-switch p1, :sswitch_data_0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :sswitch_0
    if-eqz p2, :cond_0

    .line 360
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->boundKeyCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->boundKeyCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 247
    const-string v1, "CordovaWebViewImpl"

    const-string v2, "showing Custom View"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 250
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 271
    :goto_0
    return-void

    .line 255
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    .line 256
    iput-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 259
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 260
    .local v0, "parent":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    goto :goto_0
.end method

.method public showWebPage(Ljava/lang/String;ZZLjava/util/Map;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "openExternal"    # Z
    .param p3, "clearHistory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x1

    .line 203
    const-string v3, "CordovaWebViewImpl"

    const-string v4, "showWebPage(%s, %b, %b, HashMap)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    if-eqz p3, :cond_0

    .line 207
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaWebViewEngine;->clearHistory()V

    .line 211
    :cond_0
    if-nez p2, :cond_1

    .line 213
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v3, p1}, Lorg/apache/cordova/PluginManager;->shouldAllowNavigation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {p0, p1, v8}, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlIntoView(Ljava/lang/String;Z)V

    .line 221
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v3, p1}, Lorg/apache/cordova/PluginManager;->shouldOpenExternalUrl(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 222
    const-string v3, "CordovaWebViewImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showWebPage: Refusing to send intent for URL since it is not in the <allow-intent> whitelist. URL="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_1
    return-void

    .line 218
    :cond_2
    const-string v3, "CordovaWebViewImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showWebPage: Refusing to load URL into webview since it is not in the <allow-navigation> whitelist. URL="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_3
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 232
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {v3, v2}, Lorg/apache/cordova/CordovaResourceApi;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :goto_2
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "CordovaWebViewImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 235
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_4
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    .line 390
    return-void
.end method
