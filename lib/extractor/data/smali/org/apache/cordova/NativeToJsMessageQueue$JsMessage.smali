.class Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/NativeToJsMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsMessage"
.end annotation


# instance fields
.field final jsPayloadOrCallbackId:Ljava/lang/String;

.field final pluginResult:Lorg/apache/cordova/PluginResult;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    if-nez p1, :cond_0

    .line 382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 384
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    .line 386
    return-void
.end method

.method constructor <init>(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginResult"    # Lorg/apache/cordova/PluginResult;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 391
    :cond_1
    iput-object p2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    .line 392
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    .line 393
    return-void
.end method

.method static calculateEncodedLengthHelper(Lorg/apache/cordova/PluginResult;)I
    .locals 5
    .param p0, "pluginResult"    # Lorg/apache/cordova/PluginResult;

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/apache/cordova/PluginResult;->getMessageType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 418
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 399
    :pswitch_1
    const/4 v3, 0x1

    goto :goto_0

    .line 401
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 403
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/cordova/PluginResult;->getStrMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 405
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 407
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 409
    :pswitch_6
    const/4 v3, 0x1

    .line 410
    .local v3, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/apache/cordova/PluginResult;->getMultipartMessagesSize()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 411
    invoke-virtual {p0, v1}, Lorg/apache/cordova/PluginResult;->getMultipartMessage(I)Lorg/apache/cordova/PluginResult;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->calculateEncodedLengthHelper(Lorg/apache/cordova/PluginResult;)I

    move-result v2

    .line 412
    .local v2, "length":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 413
    .local v0, "argLength":I
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method static encodeAsMessageHelper(Ljava/lang/StringBuilder;Lorg/apache/cordova/PluginResult;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "pluginResult"    # Lorg/apache/cordova/PluginResult;

    .prologue
    .line 432
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getMessageType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 466
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 434
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 437
    :pswitch_2
    const/16 v2, 0x4e

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 440
    :pswitch_3
    const/16 v2, 0x6e

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 441
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :pswitch_4
    const/16 v2, 0x73

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getStrMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 448
    :pswitch_5
    const/16 v2, 0x53

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 452
    :pswitch_6
    const/16 v2, 0x41

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 456
    :pswitch_7
    const/16 v2, 0x4d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult;->getMultipartMessagesSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 458
    invoke-virtual {p1, v0}, Lorg/apache/cordova/PluginResult;->getMultipartMessage(I)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 459
    .local v1, "multipartMessage":Lorg/apache/cordova/PluginResult;
    invoke-static {v1}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->calculateEncodedLengthHelper(Lorg/apache/cordova/PluginResult;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {p0, v1}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->encodeAsMessageHelper(Ljava/lang/StringBuilder;Lorg/apache/cordova/PluginResult;)V

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method calculateEncodedLength()I
    .locals 4

    .prologue
    .line 423
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    if-nez v2, :cond_0

    .line 424
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 428
    :goto_0
    return v2

    .line 426
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 427
    .local v1, "statusLen":I
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 428
    .local v0, "ret":I
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    invoke-static {v2}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->calculateEncodedLengthHelper(Lorg/apache/cordova/PluginResult;)I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0
.end method

.method encodeAsJsMessage(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 492
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    if-nez v2, :cond_0

    .line 493
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v0

    .line 496
    .local v0, "status":I
    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 497
    .local v1, "success":Z
    :goto_1
    const-string v2, "cordova.callbackFromNative(\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',"

    .line 499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 500
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 502
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",["

    .line 503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult;->getMessageType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 516
    iget-object v2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :goto_2
    const-string v2, "],"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    .line 519
    invoke-virtual {v3}, Lorg/apache/cordova/PluginResult;->getKeepCallback()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    .line 520
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 496
    .end local v1    # "success":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 506
    .restart local v1    # "success":Z
    :pswitch_0
    const-string v2, "atob(\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    .line 507
    invoke-virtual {v3}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    .line 508
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 511
    :pswitch_1
    const-string v2, "cordova.require(\'cordova/base64\').toArrayBuffer(\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    .line 512
    invoke-virtual {v3}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    .line 513
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 504
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method encodeAsMessage(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 471
    iget-object v6, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    if-nez v6, :cond_0

    .line 472
    const/16 v4, 0x4a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    .line 473
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v6, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    invoke-virtual {v6}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v3

    .line 477
    .local v3, "status":I
    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v6}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_2

    move v1, v4

    .line 478
    .local v1, "noResult":Z
    :goto_1
    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v6}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v6

    if-ne v3, v6, :cond_3

    move v2, v4

    .line 479
    .local v2, "resultOk":Z
    :goto_2
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    invoke-virtual {v4}, Lorg/apache/cordova/PluginResult;->getKeepCallback()Z

    move-result v0

    .line 481
    .local v0, "keepCallback":Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    const/16 v4, 0x53

    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_5

    const/16 v4, 0x31

    .line 482
    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 483
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 484
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->jsPayloadOrCallbackId:Ljava/lang/String;

    .line 485
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 486
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    iget-object v4, p0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->pluginResult:Lorg/apache/cordova/PluginResult;

    invoke-static {p1, v4}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->encodeAsMessageHelper(Ljava/lang/StringBuilder;Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .end local v0    # "keepCallback":Z
    .end local v1    # "noResult":Z
    .end local v2    # "resultOk":Z
    :cond_2
    move v1, v5

    .line 477
    goto :goto_1

    .restart local v1    # "noResult":Z
    :cond_3
    move v2, v5

    .line 478
    goto :goto_2

    .line 481
    .restart local v0    # "keepCallback":Z
    .restart local v2    # "resultOk":Z
    :cond_4
    const/16 v4, 0x46

    goto :goto_3

    :cond_5
    const/16 v4, 0x30

    goto :goto_4
.end method
