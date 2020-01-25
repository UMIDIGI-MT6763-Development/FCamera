.class synthetic Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$1;
.super Ljava/lang/Object;
.source "CameraDeviceManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$freeme$camera$common$device$CameraDeviceManagerFactory$CameraApi:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->values()[Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$1;->$SwitchMap$com$freeme$camera$common$device$CameraDeviceManagerFactory$CameraApi:[I

    :try_start_0
    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$1;->$SwitchMap$com$freeme$camera$common$device$CameraDeviceManagerFactory$CameraApi:[I

    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$1;->$SwitchMap$com$freeme$camera$common$device$CameraDeviceManagerFactory$CameraApi:[I

    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
