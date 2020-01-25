.class Lcom/freeme/camera/common/device/v1/CameraActions;
.super Ljava/lang/Object;
.source "CameraActions.java"


# static fields
.field static final ADD_CALLBACK_BUFFER:I = 0x69

.field static final AUTO_FOCUS:I = 0x12d

.field static final CANCEL_AUTO_FOCUS:I = 0x12e

.field static final CLOSE:I = 0x1

.field static final ENABLE_SHUTTER_SOUND:I = 0x1f5

.field static final GET_ORIGINAL_PARAMETERS:I = 0xcb

.field static final GET_PARAMETERS:I = 0xca

.field static final INIT_PARAMETERS:I = 0x5

.field static final LOCK:I = 0x4

.field static final RECONNECT:I = 0x2

.field static final SEND_COMMAND:I = 0x2bd

.field static final SET_AUTO_FOCUS_MOVE_CALLBACK:I = 0x12f

.field static final SET_DISPLAY_ORIENTATION:I = 0x1f6

.field static final SET_FACE_DETECTION_LISTENER:I = 0x1cd

.field static final SET_ONE_SHOT_PREVIEW_CALLBACK:I = 0x6c

.field static final SET_PARAMETERS:I = 0xc9

.field static final SET_PREVIEW_CALLBACK:I = 0x6b

.field static final SET_PREVIEW_CALLBACK_WITH_BUFFER:I = 0x68

.field static final SET_PREVIEW_DISPLAY:I = 0x6a

.field static final SET_PREVIEW_TEXTURE:I = 0x65

.field static final SET_VENDOR_DATA_CALLBACK:I = 0x2be

.field static final SET_ZOOM_CHANGE_LISTENER:I = 0x130

.field static final START_FACE_DETECTION:I = 0x1ce

.field static final START_PREVIEW:I = 0x66

.field static final START_SMOOTH_ZOOM:I = 0x131

.field static final STOP_FACE_DETECTION:I = 0x1cf

.field static final STOP_PREVIEW:I = 0x67

.field static final STOP_SMOOTH_ZOOM:I = 0x132

.field static final TAKE_PICTURE:I = 0x259

.field static final UNLOCK:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static stringify(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x259

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

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
    const-string p0, "setVendorDataCallback"

    return-object p0

    :pswitch_1
    const-string p0, "sendCommand"

    return-object p0

    :pswitch_2
    const-string p0, "setDisplayOrientation"

    return-object p0

    :pswitch_3
    const-string p0, "enableShutterSound"

    return-object p0

    :pswitch_4
    const-string p0, "stopFaceDetection"

    return-object p0

    :pswitch_5
    const-string p0, "startFaceDetection"

    return-object p0

    :pswitch_6
    const-string p0, "setFaceDetectionListener"

    return-object p0

    :pswitch_7
    const-string p0, "stopSmoothZoom"

    return-object p0

    :pswitch_8
    const-string p0, "startSmoothZoom"

    return-object p0

    :pswitch_9
    const-string p0, "setZoomChangeListener"

    return-object p0

    :pswitch_a
    const-string p0, "setAutofocusMoveCallback"

    return-object p0

    :pswitch_b
    const-string p0, "cancelAutofocus"

    return-object p0

    :pswitch_c
    const-string p0, "autofocus"

    return-object p0

    :pswitch_d
    const-string p0, "getOriginalParameters"

    return-object p0

    :pswitch_e
    const-string p0, "getParameters"

    return-object p0

    :pswitch_f
    const-string p0, "setParameters"

    return-object p0

    :pswitch_10
    const-string p0, "setOneShotPreviewCallback"

    return-object p0

    :pswitch_11
    const-string p0, "setPreviewCallback"

    return-object p0

    :pswitch_12
    const-string p0, "setPreviewDisplay"

    return-object p0

    :pswitch_13
    const-string p0, "addCallbackBuffer"

    return-object p0

    :pswitch_14
    const-string p0, "setPreviewCallbackWithBuffer"

    return-object p0

    :pswitch_15
    const-string p0, "stopPreview"

    return-object p0

    :pswitch_16
    const-string p0, "startPreview"

    return-object p0

    :pswitch_17
    const-string p0, "setPreviewTexture"

    return-object p0

    :pswitch_18
    const-string p0, "initOriginalParameters"

    return-object p0

    :pswitch_19
    const-string p0, "lock"

    return-object p0

    :pswitch_1a
    const-string p0, "unlock"

    return-object p0

    :pswitch_1b
    const-string p0, "reconnect"

    return-object p0

    :pswitch_1c
    const-string p0, "close"

    return-object p0

    :cond_0
    const-string p0, "takePicture"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc9
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1cd
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1f5
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
