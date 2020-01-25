.class public Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDeviceAction;
.super Ljava/lang/Object;
.source "FaceCuteDeviceAction.java"


# static fields
.field static final CLOSE_CAMERA:I = 0x8

.field static final DESTROY_DEVICE_CONTROLLER:I = 0x10

.field static final GET_PREVIEW_SIZE:I = 0x9

.field static final IS_READY_FOR_CAPTURE:I = 0xf

.field static final ON_CAMERA_CLOSED:I = 0xca

.field static final ON_CAMERA_DISCONNECTED:I = 0xcb

.field static final ON_CAMERA_ERROR:I = 0xcc

.field static final ON_CAMERA_OPENED:I = 0xc9

.field static final OPEN_CAMERA:I = 0x1

.field static final REQUEST_CHANGE_COMMAND:I = 0xd

.field static final REQUEST_CHANGE_COMMAND_IMMEDIATELY:I = 0xe

.field static final REQUEST_CHANGE_SETTING_VALUE:I = 0xc

.field static final REQUEST_CHANGE_SETTING_VALUE_JUST_SELF:I = 0x11

.field static final SET_PICTURE_SIZE:I = 0xb

.field static final SET_PREVIEW_CALLBACK:I = 0x3

.field static final SET_PREVIEW_SIZE_READY_CALLBACK:I = 0xa

.field static final START_PREVIEW:I = 0x4

.field static final STOP_PREVIEW:I = 0x5

.field static final TAKE_PICTURE:I = 0x6

.field static final UPDATE_G_SENSOR_ORIENTATION:I = 0x7

.field static final UPDATE_PREVIEW_SURFACE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static stringify(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

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
    const-string p0, "onCameraError"

    return-object p0

    :pswitch_1
    const-string p0, "onCameraDisconnected"

    return-object p0

    :pswitch_2
    const-string p0, "onCameraClosed"

    return-object p0

    :pswitch_3
    const-string p0, "onCameraOpened"

    return-object p0

    :pswitch_4
    const-string p0, "requestChangeSettingValueJustSelf"

    return-object p0

    :pswitch_5
    const-string p0, "destroyDeviceControllerThread"

    return-object p0

    :pswitch_6
    const-string p0, "isReadyForCapture"

    return-object p0

    :pswitch_7
    const-string p0, "requestChangeCommandImmediately"

    return-object p0

    :pswitch_8
    const-string p0, "requestChangeCommand"

    return-object p0

    :pswitch_9
    const-string p0, "requestChangeSettingValue"

    return-object p0

    :pswitch_a
    const-string p0, "setPictureSize"

    return-object p0

    :pswitch_b
    const-string p0, "setPreviewSizeReadyCallback"

    return-object p0

    :pswitch_c
    const-string p0, "getPreviewSize"

    return-object p0

    :pswitch_d
    const-string p0, "closeCamera"

    return-object p0

    :pswitch_e
    const-string p0, "updateGSensorOrientation"

    return-object p0

    :pswitch_f
    const-string p0, "takePicture"

    return-object p0

    :pswitch_10
    const-string p0, "stopPreview"

    return-object p0

    :pswitch_11
    const-string p0, "startPreview"

    return-object p0

    :pswitch_12
    const-string p0, "setPreviewCallback"

    return-object p0

    :pswitch_13
    const-string p0, "updatePreviewSurface"

    return-object p0

    :pswitch_14
    const-string p0, "openCamera"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
