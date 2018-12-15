.class public Lorg/apache/cordova/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Config"

.field static parser:Lorg/apache/cordova/ConfigXmlParser;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getErrorUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    invoke-virtual {v0}, Lorg/apache/cordova/ConfigXmlParser;->getPreferences()Lorg/apache/cordova/CordovaPreferences;

    move-result-object v0

    const-string v1, "errorurl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/cordova/PluginEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    invoke-virtual {v0}, Lorg/apache/cordova/ConfigXmlParser;->getPluginEntries()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferences()Lorg/apache/cordova/CordovaPreferences;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    invoke-virtual {v0}, Lorg/apache/cordova/ConfigXmlParser;->getPreferences()Lorg/apache/cordova/CordovaPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    if-nez v0, :cond_0

    .line 51
    const-string v0, "file:///android_asset/www/index.html"

    .line 53
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    invoke-virtual {v0}, Lorg/apache/cordova/ConfigXmlParser;->getLaunchUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lorg/apache/cordova/ConfigXmlParser;

    invoke-direct {v0}, Lorg/apache/cordova/ConfigXmlParser;-><init>()V

    sput-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    .line 47
    :cond_0
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2
    .param p0, "action"    # Landroid/app/Activity;

    .prologue
    .line 36
    new-instance v0, Lorg/apache/cordova/ConfigXmlParser;

    invoke-direct {v0}, Lorg/apache/cordova/ConfigXmlParser;-><init>()V

    sput-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    .line 37
    sget-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    invoke-virtual {v0, p0}, Lorg/apache/cordova/ConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 39
    sget-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    invoke-virtual {v0}, Lorg/apache/cordova/ConfigXmlParser;->getPreferences()Lorg/apache/cordova/CordovaPreferences;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaPreferences;->setPreferencesBundle(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
