.class public Lorg/apache/cordova/CordovaDialogsHelper;
.super Ljava/lang/Object;
.source "CordovaDialogsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/CordovaDialogsHelper$Result;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private lastHandledDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/cordova/CordovaDialogsHelper;->context:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public destroyLastDialog()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/cordova/CordovaDialogsHelper;->lastHandledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/apache/cordova/CordovaDialogsHelper;->lastHandledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 147
    :cond_0
    return-void
.end method

.method public showAlert(Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/cordova/CordovaDialogsHelper$Result;

    .prologue
    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/apache/cordova/CordovaDialogsHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 41
    const-string v1, "Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 44
    const v1, 0x104000a

    new-instance v2, Lorg/apache/cordova/CordovaDialogsHelper$1;

    invoke-direct {v2, p0, p2}, Lorg/apache/cordova/CordovaDialogsHelper$1;-><init>(Lorg/apache/cordova/CordovaDialogsHelper;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    new-instance v1, Lorg/apache/cordova/CordovaDialogsHelper$2;

    invoke-direct {v1, p0, p2}, Lorg/apache/cordova/CordovaDialogsHelper$2;-><init>(Lorg/apache/cordova/CordovaDialogsHelper;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    new-instance v1, Lorg/apache/cordova/CordovaDialogsHelper$3;

    invoke-direct {v1, p0, p2}, Lorg/apache/cordova/CordovaDialogsHelper$3;-><init>(Lorg/apache/cordova/CordovaDialogsHelper;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/CordovaDialogsHelper;->lastHandledDialog:Landroid/app/AlertDialog;

    .line 69
    return-void
.end method

.method public showConfirm(Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/cordova/CordovaDialogsHelper$Result;

    .prologue
    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/apache/cordova/CordovaDialogsHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 76
    const v1, 0x104000a

    new-instance v2, Lorg/apache/cordova/CordovaDialogsHelper$4;

    invoke-direct {v2, p0, p2}, Lorg/apache/cordova/CordovaDialogsHelper$4;-><init>(Lorg/apache/cordova/CordovaDialogsHelper;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    const/high16 v1, 0x1040000

    new-instance v2, Lorg/apache/cordova/CordovaDialogsHelper$5;

    invoke-direct {v2, p0, p2}, Lorg/apache/cordova/CordovaDialogsHelper$5;-><init>(Lorg/apache/cordova/CordovaDialogsHelper;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    new-instance v1, Lorg/apache/cordova/CordovaDialogsHelper$6;

    invoke-direct {v1, p0, p2}, Lorg/apache/cordova/CordovaDialogsHelper$6;-><init>(Lorg/apache/cordova/CordovaDialogsHelper;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance v1, Lorg/apache/cordova/CordovaDialogsHelper$7;

    invoke-direct {v1, p0, p2}, Lorg/apache/cordova/CordovaDialogsHelper$7;-><init>(Lorg/apache/cordova/CordovaDialogsHelper;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/CordovaDialogsHelper;->lastHandledDialog:Landroid/app/AlertDialog;

    .line 107
    return-void
.end method

.method public showPrompt(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "result"    # Lorg/apache/cordova/CordovaDialogsHelper$Result;

    .prologue
    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/apache/cordova/CordovaDialogsHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lorg/apache/cordova/CordovaDialogsHelper;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, "input":Landroid/widget/EditText;
    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 127
    const v2, 0x104000a

    new-instance v3, Lorg/apache/cordova/CordovaDialogsHelper$8;

    invoke-direct {v3, p0, v1, p3}, Lorg/apache/cordova/CordovaDialogsHelper$8;-><init>(Lorg/apache/cordova/CordovaDialogsHelper;Landroid/widget/EditText;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    const/high16 v2, 0x1040000

    new-instance v3, Lorg/apache/cordova/CordovaDialogsHelper$9;

    invoke-direct {v3, p0, p3}, Lorg/apache/cordova/CordovaDialogsHelper$9;-><init>(Lorg/apache/cordova/CordovaDialogsHelper;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/cordova/CordovaDialogsHelper;->lastHandledDialog:Landroid/app/AlertDialog;

    .line 141
    return-void
.end method
