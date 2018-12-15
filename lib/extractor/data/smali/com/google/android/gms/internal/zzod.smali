.class public final Lcom/google/android/gms/internal/zzod;
.super Lcom/google/android/gms/internal/zznq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zznq",
        "<",
        "Lcom/google/android/gms/internal/zzod;",
        ">;"
    }
.end annotation


# instance fields
.field private zzaEJ:Ljava/lang/String;

.field private zzaEK:I

.field private zzaEL:I

.field private zzaEM:Ljava/lang/String;

.field private zzaEN:Ljava/lang/String;

.field private zzaEO:Z

.field private zzaEP:Z

.field private zzaEQ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzod;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzod;->zzwA()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzod;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznq;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzu;->zzbw(I)I

    iput p2, p0, Lcom/google/android/gms/internal/zzod;->zzaEK:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzod;->zzaEP:Z

    return-void
.end method

.method static zzwA()I
    .locals 6

    const-wide/32 v4, 0x7fffffff

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v2, v4

    long-to-int v0, v2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    if-nez v0, :cond_0

    const-string v0, "GAv4"

    const-string v1, "UUID.randomUUID() returned 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private zzwH()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEQ:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenViewInfo is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public isMutable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEQ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;->zzwH()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzod;->zzaEJ:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzod;->zzaEJ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "interstitial"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzod;->zzaEO:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "automatic"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzod;->zzaEP:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzod;->zzaEK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzod;->zzaEL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzod;->zzaEM:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzod;->zzaEN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzod;->zzy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zza(Lcom/google/android/gms/internal/zznq;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzod;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzod;->zzc(Lcom/google/android/gms/internal/zzod;)V

    return-void
.end method

.method public zzah(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;->zzwH()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzod;->zzaEP:Z

    return-void
.end method

.method public zzai(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;->zzwH()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzod;->zzaEO:Z

    return-void
.end method

.method public zzbn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEK:I

    return v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzod;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzod;->setScreenName(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEK:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEK:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzod;->zzhK(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEL:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEL:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzod;->zzhL(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEM:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzod;->zzdJ(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzod;->zzdK(Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEO:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEO:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzod;->zzai(Z)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEP:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEP:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzod;->zzah(Z)V

    :cond_6
    return-void
.end method

.method public zzdJ(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;->zzwH()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzod;->zzaEM:Ljava/lang/String;

    return-void
.end method

.method public zzdK(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;->zzwH()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEN:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzod;->zzaEN:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzhK(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;->zzwH()V

    iput p1, p0, Lcom/google/android/gms/internal/zzod;->zzaEK:I

    return-void
.end method

.method public zzhL(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzod;->zzwH()V

    iput p1, p0, Lcom/google/android/gms/internal/zzod;->zzaEL:I

    return-void
.end method

.method public zzwB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEJ:Ljava/lang/String;

    return-object v0
.end method

.method public zzwC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEL:I

    return v0
.end method

.method public zzwD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEM:Ljava/lang/String;

    return-object v0
.end method

.method public zzwE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEN:Ljava/lang/String;

    return-object v0
.end method

.method public zzwF()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEQ:Z

    return-void
.end method

.method public zzwG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzod;->zzaEO:Z

    return v0
.end method
