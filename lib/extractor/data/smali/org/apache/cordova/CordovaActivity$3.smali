.class Lorg/apache/cordova/CordovaActivity$3;
.super Ljava/lang/Object;
.source "CordovaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaActivity;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CordovaActivity;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$exit:Z

.field final synthetic val$failingUrl:Ljava/lang/String;

.field final synthetic val$me:Lorg/apache/cordova/CordovaActivity;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaActivity;ZLorg/apache/cordova/CordovaActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/CordovaActivity;

    .prologue
    .line 385
    iput-object p1, p0, Lorg/apache/cordova/CordovaActivity$3;->this$0:Lorg/apache/cordova/CordovaActivity;

    iput-boolean p2, p0, Lorg/apache/cordova/CordovaActivity$3;->val$exit:Z

    iput-object p3, p0, Lorg/apache/cordova/CordovaActivity$3;->val$me:Lorg/apache/cordova/CordovaActivity;

    iput-object p4, p0, Lorg/apache/cordova/CordovaActivity$3;->val$description:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/CordovaActivity$3;->val$failingUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 387
    iget-boolean v0, p0, Lorg/apache/cordova/CordovaActivity$3;->val$exit:Z

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity$3;->val$me:Lorg/apache/cordova/CordovaActivity;

    iget-object v0, v0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity$3;->val$me:Lorg/apache/cordova/CordovaActivity;

    const-string v1, "Application Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity$3;->val$description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity$3;->val$failingUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    iget-boolean v4, p0, Lorg/apache/cordova/CordovaActivity$3;->val$exit:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/cordova/CordovaActivity;->displayError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 391
    :cond_0
    return-void
.end method
