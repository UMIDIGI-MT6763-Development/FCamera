.class public final synthetic Lcom/freeme/camera/-$$Lambda$SecureCameraActivity$DxIfAuWMejh9foOfJ6GVHkebugU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/freeme/camera/-$$Lambda$SecureCameraActivity$DxIfAuWMejh9foOfJ6GVHkebugU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freeme/camera/-$$Lambda$SecureCameraActivity$DxIfAuWMejh9foOfJ6GVHkebugU;

    invoke-direct {v0}, Lcom/freeme/camera/-$$Lambda$SecureCameraActivity$DxIfAuWMejh9foOfJ6GVHkebugU;-><init>()V

    sput-object v0, Lcom/freeme/camera/-$$Lambda$SecureCameraActivity$DxIfAuWMejh9foOfJ6GVHkebugU;->INSTANCE:Lcom/freeme/camera/-$$Lambda$SecureCameraActivity$DxIfAuWMejh9foOfJ6GVHkebugU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/freeme/camera/SecureCameraActivity;->lambda$goToGallery$0(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
