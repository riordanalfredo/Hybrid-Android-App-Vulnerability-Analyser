.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/MaskedWalletRequest$1;,
        Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/MaskedWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzCY:I

.field zzaQg:Ljava/lang/String;

.field zzaQn:Ljava/lang/String;

.field zzaQx:Lcom/google/android/gms/wallet/Cart;

.field zzaRi:Z

.field zzaRj:Z

.field zzaRk:Z

.field zzaRl:Ljava/lang/String;

.field zzaRm:Ljava/lang/String;

.field zzaRn:Z

.field zzaRo:Z

.field zzaRp:[Lcom/google/android/gms/wallet/CountrySpecification;

.field zzaRq:Z

.field zzaRr:Z

.field zzaRs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field zzaRt:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

.field zzaRu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzCY:I

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRq:Z

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRr:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZLjava/util/ArrayList;Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "merchantTransactionId"    # Ljava/lang/String;
    .param p3, "phoneNumberRequired"    # Z
    .param p4, "shippingAddressRequired"    # Z
    .param p5, "useMinimalBillingAddress"    # Z
    .param p6, "estimatedTotalPrice"    # Ljava/lang/String;
    .param p7, "currencyCode"    # Ljava/lang/String;
    .param p8, "merchantName"    # Ljava/lang/String;
    .param p9, "cart"    # Lcom/google/android/gms/wallet/Cart;
    .param p10, "shouldRetrieveWalletObjects"    # Z
    .param p11, "isBillingAgreement"    # Z
    .param p12, "allowedShippingCountrySpecifications"    # [Lcom/google/android/gms/wallet/CountrySpecification;
    .param p13, "allowPrepaidCard"    # Z
    .param p14, "allowDebitCard"    # Z
    .param p16, "paymentMethodTokenizationParameters"    # Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/Cart;",
            "ZZ[",
            "Lcom/google/android/gms/wallet/CountrySpecification;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;",
            "Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p15, "allowedCountrySpecificationsForShipping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/identity/intents/model/CountrySpecification;>;"
    .local p17, "allowedCardNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQn:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRi:Z

    iput-boolean p4, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRj:Z

    iput-boolean p5, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRk:Z

    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRl:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRm:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQx:Lcom/google/android/gms/wallet/Cart;

    iput-boolean p10, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRn:Z

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRo:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRp:[Lcom/google/android/gms/wallet/CountrySpecification;

    iput-boolean p13, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRq:Z

    iput-boolean p14, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRr:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRs:Ljava/util/ArrayList;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRt:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRu:Ljava/util/ArrayList;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/MaskedWalletRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/MaskedWalletRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public allowDebitCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRr:Z

    return v0
.end method

.method public allowPrepaidCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRq:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowedCardNetworks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllowedCountrySpecificationsForShipping()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllowedShippingCountrySpecifications()[Lcom/google/android/gms/wallet/CountrySpecification;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRp:[Lcom/google/android/gms/wallet/CountrySpecification;

    return-object v0
.end method

.method public getCart()Lcom/google/android/gms/wallet/Cart;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQx:Lcom/google/android/gms/wallet/Cart;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQg:Ljava/lang/String;

    return-object v0
.end method

.method public getEstimatedTotalPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRl:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRm:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaQn:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodTokenizationParameters()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRt:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzCY:I

    return v0
.end method

.method public isBillingAgreement()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRo:Z

    return v0
.end method

.method public isPhoneNumberRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRi:Z

    return v0
.end method

.method public isShippingAddressRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRj:Z

    return v0
.end method

.method public shouldRetrieveWalletObjects()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRn:Z

    return v0
.end method

.method public useMinimalBillingAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->zzaRk:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzl;->zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
