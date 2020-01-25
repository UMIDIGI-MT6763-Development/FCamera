.class Lcom/mediatek/camera/portability/pq/PictureQualityWrapper;
.super Ljava/lang/Object;
.source "PictureQualityWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enterCameraMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->setMode(I)Ljava/lang/String;

    return-void
.end method

.method public static exitCameraMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->setMode(I)Ljava/lang/String;

    return-void
.end method

.method public static getEMinStepOfSSOLED()I
    .locals 1

    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getESSOLEDMinStep()I

    move-result v0

    return v0
.end method

.method public static getMinStepOfESSLED()I
    .locals 1

    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getESSLEDMinStep()I

    move-result v0

    return v0
.end method

.method public static setMinStepOfESSLED(I)V
    .locals 0

    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setESSLEDMinStep(I)Z

    return-void
.end method

.method public static setMinStepOfESSOLED(I)V
    .locals 0

    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->setESSOLEDMinStep(I)Z

    return-void
.end method
