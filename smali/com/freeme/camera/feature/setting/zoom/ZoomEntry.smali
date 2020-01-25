.class public Lcom/freeme/camera/feature/setting/zoom/ZoomEntry;
.super Lcom/freeme/camera/common/loader/FeatureEntryBase;
.source "ZoomEntry.java"


# static fields
.field private static final sIsDualCameraSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.vendor.mtk_cam_dualzoom_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/freeme/camera/feature/setting/zoom/ZoomEntry;->sIsDualCameraSupport:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;-><init>()V

    return-object v0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/zoom/ZoomEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/setting/ICameraSetting;

    return-object v0
.end method

.method public isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z
    .locals 0

    sget-boolean p1, Lcom/freeme/camera/feature/setting/zoom/ZoomEntry;->sIsDualCameraSupport:Z

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/zoom/ZoomEntry;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
