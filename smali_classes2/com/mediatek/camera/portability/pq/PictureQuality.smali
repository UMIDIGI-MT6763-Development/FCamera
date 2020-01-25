.class public Lcom/mediatek/camera/portability/pq/PictureQuality;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PictureQuality"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enterCameraMode()V
    .locals 2

    invoke-static {}, Lcom/mediatek/camera/portability/pq/PictureQuality;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/camera/portability/pq/PictureQuality;->TAG:Ljava/lang/String;

    const-string v1, "[enterCameraMode]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/camera/portability/pq/PictureQualityWrapper;->enterCameraMode()V

    :cond_0
    return-void
.end method

.method public static exitCameraMode()V
    .locals 2

    invoke-static {}, Lcom/mediatek/camera/portability/pq/PictureQuality;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/camera/portability/pq/PictureQuality;->TAG:Ljava/lang/String;

    const-string v1, "[exitCameraMode]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/camera/portability/pq/PictureQualityWrapper;->exitCameraMode()V

    :cond_0
    return-void
.end method

.method public static getEMinStepOfSSOLED()I
    .locals 2

    invoke-static {}, Lcom/mediatek/camera/portability/pq/PictureQuality;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/camera/portability/pq/PictureQuality;->TAG:Ljava/lang/String;

    const-string v1, "[getEMinStepOfSSOLED]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/camera/portability/pq/PictureQualityWrapper;->getEMinStepOfSSOLED()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getMinStepOfESSLED()I
    .locals 2

    invoke-static {}, Lcom/mediatek/camera/portability/pq/PictureQuality;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/camera/portability/pq/PictureQuality;->TAG:Ljava/lang/String;

    const-string v1, "[getMinStepOfESSLED]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/camera/portability/pq/PictureQualityWrapper;->getMinStepOfESSLED()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static isSupported()Z
    .locals 4

    :try_start_0
    const-string v0, "com.mediatek.pq.PictureQuality"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/mediatek/camera/portability/pq/PictureQuality;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSupported], return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static setMinStepOfESSLED(I)V
    .locals 2

    invoke-static {}, Lcom/mediatek/camera/portability/pq/PictureQuality;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/camera/portability/pq/PictureQuality;->TAG:Ljava/lang/String;

    const-string v1, "[setMinStepOfESSLED]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/mediatek/camera/portability/pq/PictureQualityWrapper;->setMinStepOfESSLED(I)V

    :cond_0
    return-void
.end method

.method public static setMinStepOfESSOLED(I)V
    .locals 2

    invoke-static {}, Lcom/mediatek/camera/portability/pq/PictureQuality;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/camera/portability/pq/PictureQuality;->TAG:Ljava/lang/String;

    const-string v1, "[setMinStepOfESSOLED]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/mediatek/camera/portability/pq/PictureQualityWrapper;->setMinStepOfESSOLED(I)V

    :cond_0
    return-void
.end method
