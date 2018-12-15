.class public Lorg/apache/cordova/CordovaInterfaceImpl;
.super Ljava/lang/Object;
.source "CordovaInterfaceImpl.java"

# interfaces
.implements Lorg/apache/cordova/CordovaInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CordovaInterfaceImpl"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

.field protected activityResultRequestCode:I

.field protected activityWasDestroyed:Z

.field protected initCallbackService:Ljava/lang/String;

.field protected permissionResultCallbacks:Lorg/apache/cordova/CallbackMap;

.field protected pluginManager:Lorg/apache/cordova/PluginManager;

.field protected savedPluginState:Landroid/os/Bundle;

.field protected savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

.field protected threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/CordovaInterfaceImpl;-><init>(Landroid/app/Activity;Ljava/util/concurrent/ExecutorService;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "threadPool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityWasDestroyed:Z

    .line 57
    iput-object p1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 59
    new-instance v0, Lorg/apache/cordova/CallbackMap;

    invoke-direct {v0}, Lorg/apache/cordova/CallbackMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->permissionResultCallbacks:Lorg/apache/cordova/CallbackMap;

    .line 60
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 231
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 233
    iget-object v2, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 238
    .end local v0    # "result":I
    :cond_0
    :goto_0
    return v1

    .line 234
    .restart local v0    # "result":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 133
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    .line 134
    .local v0, "callback":Lorg/apache/cordova/CordovaPlugin;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->initCallbackService:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;-><init>(IILandroid/content/Intent;)V

    iput-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    .line 138
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    iget-object v2, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->initCallbackService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedPluginState:Landroid/os/Bundle;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaPlugin;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/ResumeCallback;

    .line 142
    invoke-virtual {v0}, Lorg/apache/cordova/CordovaPlugin;->getServiceName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/ResumeCallback;-><init>(Ljava/lang/String;Lorg/apache/cordova/PluginManager;)V

    .line 141
    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPlugin;->onRestoreStateForActivityResult(Landroid/os/Bundle;Lorg/apache/cordova/CallbackContext;)V

    .line 146
    :cond_0
    iput-object v5, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    .line 148
    if-eqz v0, :cond_1

    .line 149
    const-string v1, "CordovaInterfaceImpl"

    const-string v2, "Sending activity result to plugin"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-object v5, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->initCallbackService:Ljava/lang/String;

    .line 151
    iput-object v5, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    .line 152
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    const/4 v1, 0x1

    .line 156
    :goto_0
    return v1

    .line 155
    :cond_1
    const-string v2, "CordovaInterfaceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got an activity result, but no plugin was registered to receive it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    if-eqz v1, :cond_2

    const-string v1, " yet!"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :cond_2
    const-string v1, "."

    goto :goto_1
.end method

.method public onCordovaInit(Lorg/apache/cordova/PluginManager;)V
    .locals 6
    .param p1, "pluginManager"    # Lorg/apache/cordova/PluginManager;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 106
    iget-object v3, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    invoke-static {v3}, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->access$000(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)I

    move-result v3

    iget-object v4, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    invoke-static {v4}, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->access$100(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedResult:Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    invoke-static {v5}, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->access$200(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/cordova/CordovaInterfaceImpl;->onActivityResult(IILandroid/content/Intent;)Z

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-boolean v3, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityWasDestroyed:Z

    if-eqz v3, :cond_0

    .line 111
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityWasDestroyed:Z

    .line 112
    if-eqz p1, :cond_0

    .line 114
    const-string v3, "CoreAndroid"

    invoke-virtual {p1, v3}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CoreAndroid;

    .line 115
    .local v0, "appPlugin":Lorg/apache/cordova/CoreAndroid;
    if-eqz v0, :cond_0

    .line 116
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "action"

    const-string v4, "resume"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v4, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CoreAndroid;->sendResumeEvent(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "CordovaInterfaceImpl"

    const-string v4, "Failed to create event message"

    invoke-static {v3, v4, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 89
    const-string v0, "exit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 92
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->permissionResultCallbacks:Lorg/apache/cordova/CallbackMap;

    invoke-virtual {v1, p1}, Lorg/apache/cordova/CallbackMap;->getAndRemoveCallback(I)Landroid/util/Pair;

    move-result-object v0

    .line 213
    .local v0, "callback":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/apache/cordova/CordovaPlugin;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/apache/cordova/CordovaPlugin;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 216
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    invoke-virtual {v1}, Lorg/apache/cordova/CordovaPlugin;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "serviceName":Ljava/lang/String;
    const-string v1, "callbackService"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v0    # "serviceName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    if-eqz v1, :cond_1

    .line 177
    const-string v1, "plugin"

    iget-object v2, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginManager;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    :cond_1
    return-void
.end method

.method public requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V
    .locals 2
    .param p1, "plugin"    # Lorg/apache/cordova/CordovaPlugin;
    .param p2, "requestCode"    # I
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 220
    .local v0, "permissions":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 221
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/cordova/CordovaInterfaceImpl;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V
    .locals 2
    .param p1, "plugin"    # Lorg/apache/cordova/CordovaPlugin;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 225
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->permissionResultCallbacks:Lorg/apache/cordova/CallbackMap;

    invoke-virtual {v1, p1, p2}, Lorg/apache/cordova/CallbackMap;->registerCallback(Lorg/apache/cordova/CordovaPlugin;I)I

    move-result v0

    .line 226
    .local v0, "mappedRequestCode":I
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaInterfaceImpl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 227
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    const-string v0, "callbackService"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->initCallbackService:Ljava/lang/String;

    .line 187
    const-string v0, "plugin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->savedPluginState:Landroid/os/Bundle;

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityWasDestroyed:Z

    .line 189
    return-void
.end method

.method public setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V
    .locals 4
    .param p1, "plugin"    # Lorg/apache/cordova/CordovaPlugin;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    iget v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultRequestCode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    .line 80
    return-void
.end method

.method public setActivityResultRequestCode(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 165
    iput p1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultRequestCode:I

    .line 166
    return-void
.end method

.method public startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "command"    # Lorg/apache/cordova/CordovaPlugin;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaInterfaceImpl;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    .line 69
    throw v0
.end method
