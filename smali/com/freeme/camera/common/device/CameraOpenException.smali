.class public Lcom/freeme/camera/common/device/CameraOpenException;
.super Ljava/lang/Exception;
.source "CameraOpenException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;
    }
.end annotation


# instance fields
.field private final mReason:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;)V
    .locals 1

    invoke-static {p1}, Lcom/freeme/camera/common/device/CameraOpenException;->getDefaultMessage(Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/CameraOpenException;->mReason:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/CameraOpenException;->mReason:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/CameraOpenException;->mReason:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lcom/freeme/camera/common/device/CameraOpenException;->getDefaultMessage(Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/CameraOpenException;->mReason:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    return-void
.end method

.method public static getDefaultMessage(Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/device/CameraOpenException$1;->$SwitchMap$com$freeme$camera$common$device$CameraOpenException$ExceptionType:[I

    invoke-virtual {p0}, Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown camera open exception, need check the case type"

    return-object p0

    :pswitch_0
    const-string p0, "opening the camera fails (for example, if the camera is in use by another process or device policy manager has disabled the camera)."

    return-object p0

    :pswitch_1
    const-string p0, "the application does not have permission to access the camera"

    return-object p0

    :pswitch_2
    const-string p0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getExceptionType()Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraOpenException;->mReason:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    return-object v0
.end method
