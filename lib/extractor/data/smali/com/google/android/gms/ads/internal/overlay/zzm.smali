.class Lcom/google/android/gms/ads/internal/overlay/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zzAq:Z

.field private zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzAq:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzAq:Z

    sget-object v0, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzAq:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzzl:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzeL()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzeY()V

    :cond_0
    return-void
.end method

.method public zzeY()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
