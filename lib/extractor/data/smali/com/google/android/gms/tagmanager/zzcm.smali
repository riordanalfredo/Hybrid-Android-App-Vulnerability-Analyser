.class Lcom/google/android/gms/tagmanager/zzcm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzp$zze;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzcm$zza;,
        Lcom/google/android/gms/tagmanager/zzcm$zzb;
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private zzaKV:Ljava/lang/String;

.field private final zzaKy:Ljava/lang/String;

.field private zzaMU:Lcom/google/android/gms/tagmanager/zzbf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzbf",
            "<",
            "Lcom/google/android/gms/internal/zzaf$zzj;",
            ">;"
        }
    .end annotation
.end field

.field private zzaMV:Lcom/google/android/gms/tagmanager/zzs;

.field private final zzaMX:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzaMY:Lcom/google/android/gms/tagmanager/zzcm$zza;

.field private zzaMZ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzcm;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;Lcom/google/android/gms/tagmanager/zzcm$zzb;Lcom/google/android/gms/tagmanager/zzcm$zza;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;Lcom/google/android/gms/tagmanager/zzcm$zzb;Lcom/google/android/gms/tagmanager/zzcm$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMV:Lcom/google/android/gms/tagmanager/zzs;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaKy:Ljava/lang/String;

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/android/gms/tagmanager/zzcm$1;

    invoke-direct {p4, p0}, Lcom/google/android/gms/tagmanager/zzcm$1;-><init>(Lcom/google/android/gms/tagmanager/zzcm;)V

    :cond_0
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcm$zzb;->zzzm()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMX:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p5, :cond_1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcm$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcm$2;-><init>(Lcom/google/android/gms/tagmanager/zzcm;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMY:Lcom/google/android/gms/tagmanager/zzcm$zza;

    :goto_0
    return-void

    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMY:Lcom/google/android/gms/tagmanager/zzcm$zza;

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzcm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzcm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaKy:Ljava/lang/String;

    return-object v0
.end method

.method private zzeC(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzcl;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMY:Lcom/google/android/gms/tagmanager/zzcm$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMV:Lcom/google/android/gms/tagmanager/zzs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzcm$zza;->zza(Lcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzcl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMU:Lcom/google/android/gms/tagmanager/zzbf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcl;->zza(Lcom/google/android/gms/tagmanager/zzbf;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaKV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcl;->zzem(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzcl;->zzeB(Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized zzzl()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called method after closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcm;->zzzl()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMZ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMZ:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMX:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zza(Lcom/google/android/gms/tagmanager/zzbf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzbf",
            "<",
            "Lcom/google/android/gms/internal/zzaf$zzj;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcm;->zzzl()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMU:Lcom/google/android/gms/tagmanager/zzbf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzem(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcm;->zzzl()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaKV:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzf(JLjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAfterDelay: containerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaKy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaB(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcm;->zzzl()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMU:Lcom/google/android/gms/tagmanager/zzbf;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before loadAfterDelay() is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMZ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMZ:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMX:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p3}, Lcom/google/android/gms/tagmanager/zzcm;->zzeC(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzcl;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcm;->zzaMZ:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
