.class Lorg/apache/cordova/engine/SystemWebViewEngine$1;
.super Ljava/lang/Object;
.source "SystemWebViewEngine.java"

# interfaces
.implements Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/engine/SystemWebViewEngine;->init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/engine/SystemWebViewEngine;


# direct methods
.method constructor <init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/engine/SystemWebViewEngine;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine$1;->this$0:Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine$1;->this$0:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine$1;->this$0:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/engine/SystemWebView;->setNetworkAvailable(Z)V

    .line 114
    return-void
.end method
