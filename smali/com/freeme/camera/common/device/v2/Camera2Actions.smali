.class Lcom/freeme/camera/common/device/v2/Camera2Actions;
.super Ljava/lang/Object;
.source "Camera2Actions.java"


# static fields
.field static final ABORT_CAPTURES:I = 0xcf

.field static final CAPTURE:I = 0xca

.field static final CAPTURE_BURST:I = 0xcb

.field static final CLOSE_DEVICE:I = 0x6a

.field static final CLOSE_SESSION:I = 0xd1

.field static final CREATE_CAPTURE_REQUEST:I = 0x68

.field static final CREATE_CAPTURE_SESSION:I = 0x65

.field static final CREATE_CONSTRAINED_HIGH_SPEED_CAPTURE_SESSION:I = 0x67

.field static final CREATE_HIGH_SPEED_REQUEST:I = 0xd3

.field static final CREATE_REPROCESSABLE_CAPTURE_REQUEST:I = 0x69

.field static final CREATE_REPROCESSABLE_CAPTURE_SESSION:I = 0x66

.field static final FINALIZE_OUTPUTCONFIGURATIONS:I = 0xd4

.field static final GET_INPUT_SURFACE:I = 0xd0

.field static final IS_REPROCESSABLE:I = 0xd2

.field static final PREPARE:I = 0xc9

.field static final SET_REPEATING_BURST:I = 0xcd

.field static final SET_REPEATING_REQUEST:I = 0xcc

.field static final STOP_REPEATING:I = 0xce


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static isSessionMessageType(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static stringify(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "finalize output configurations"

    return-object p0

    :pswitch_1
    const-string p0, "create high speed request"

    return-object p0

    :pswitch_2
    const-string p0, "close session"

    return-object p0

    :pswitch_3
    const-string p0, "getInputSurface"

    return-object p0

    :pswitch_4
    const-string p0, "abortCaptures"

    return-object p0

    :pswitch_5
    const-string p0, "stopRepeating"

    return-object p0

    :pswitch_6
    const-string p0, "setRepeatingBurst"

    return-object p0

    :pswitch_7
    const-string p0, "setRepeatingRequest"

    return-object p0

    :pswitch_8
    const-string p0, "captureBurst"

    return-object p0

    :pswitch_9
    const-string p0, "capture"

    return-object p0

    :pswitch_a
    const-string p0, "prepare"

    return-object p0

    :pswitch_b
    const-string p0, "close device"

    return-object p0

    :pswitch_c
    const-string p0, "createReprocessCaptureRequest"

    return-object p0

    :pswitch_d
    const-string p0, "createCaptureRequest"

    return-object p0

    :pswitch_e
    const-string p0, "createConstrainedHighSpeedCaptureSession"

    return-object p0

    :pswitch_f
    const-string p0, "createReprocessableCaptureSession"

    return-object p0

    :pswitch_10
    const-string p0, "createCaptureSession"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
