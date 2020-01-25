.class public Lcom/freeme/camera/common/custom/CameraCustomXmlParser;
.super Ljava/lang/Object;
.source "CameraCustomXmlParser.java"


# static fields
.field public static final BACK_CAMERA_PREVIEW_SIZE_CUSTOM:Ljava/lang/String; = "BACK_CAMERA_PREVIEW_SIZE_CUSTOM"

.field public static final CAMERA_FACE_CUTE_SHOW:Ljava/lang/String; = "CAMERA_FACE_CUTE_SHOW"

.field public static final CAMERA_FRONT_SLR_SHOW:Ljava/lang/String; = "CAMERA_FRONT_SLR_SHOW"

.field public static final CAMERA_IKO_MODE_SHOW:Ljava/lang/String; = "CAMERA_IKO_MODE_SHOW"

.field public static final CAMERA_PLUGIN_LARGEMODE_SHOW:Ljava/lang/String; = "CAMERA_PLUGIN_LARGEMODE_SHOW"

.field public static final CAMERA_SDOF_SHOW:Ljava/lang/String; = "CAMERA_SDOF_SHOW"

.field public static final CAMERA_SLR_SHOW:Ljava/lang/String; = "CAMERA_SLR_SHOW"

.field public static final DNR_MODE_SUPPORT:Ljava/lang/String; = "DNR_MODE_SUPPORT"

.field public static final FRONT_CAMERA_PREVIEW_SIZE_CUSTOM:Ljava/lang/String; = "FRONT_CAMERA_PREVIEW_SIZE_CUSTOM"

.field public static final GOTO_FREEME_GALLERY:Ljava/lang/String; = "GOTO_FREEME_GALLERY"

.field public static final IKO_USE_SPECIFIED_BROWSER_PKG:Ljava/lang/String; = "IKO_USE_SPECIFIED_BROWSER_PKG"

.field public static final PHYSIOGNOMY_MODE_SUPPORT:Ljava/lang/String; = "PHYSIOGNOMY_MODE_SUPPORT"

.field public static final SDOF_LEVEL_DEFAULT:Ljava/lang/String; = "SDOF_LEVEL_DEFAULT"

.field public static final SDOF_MODE_SUPPORT:Ljava/lang/String; = "SDOF_MODE_SUPPORT"

.field public static final TAG:Ljava/lang/String; = "CameraCustomXmlParser"

.field public static final USE_FREEME_THEME_STYLES:Ljava/lang/String; = "USE_FREEME_THEME_STYLES"

.field public static final WATER_DROP_SCREEN:Ljava/lang/String; = "WATER_DROP_SCREEN"

.field public static camera_face_beauty_show:Ljava/lang/String;

.field public static camera_freeme_iko:Ljava/lang/String;

.field public static camera_front_plugin_child_show:Ljava/lang/String;

.field public static camera_gestureshot_default:Ljava/lang/String;

.field public static camera_mode_back_default:Ljava/lang/String;

.field public static camera_mode_front_default:Ljava/lang/String;

.field public static camera_picturesize_back_default:Ljava/lang/String;

.field public static camera_picturesize_front_default:Ljava/lang/String;

.field public static camera_picturesize_micro_len_default:Ljava/lang/String;

.field public static camera_picturesize_wide_default:Ljava/lang/String;

.field public static camera_plugin_child_show:Ljava/lang/String;

.field public static camera_plugin_filmmode_show:Ljava/lang/String;

.field public static camera_plugin_pose_show:Ljava/lang/String;

.field public static camera_plugin_watermark_show:Ljava/lang/String;

.field public static camera_portrait_show:Ljava/lang/String;

.field public static camera_resource_center_default:Ljava/lang/String;

.field public static camera_video_face_beauty_show:Ljava/lang/String;

.field public static faceBeauty_grade_default:Ljava/lang/String;

.field public static fake_focus_default:Ljava/lang/String;

.field public static sBeautyFaceMaxPreviewWidth:Ljava/lang/String;

.field public static sBeautyVideoModeSupport:Ljava/lang/String;

.field public static sCameraAntibandingDefault:Ljava/lang/String;

.field public static sCameraBackVideoSizeDefault:Ljava/lang/String;

.field public static sCameraBrightnessLevel:Ljava/lang/String;

.field public static sCameraContinueNumDefault:Ljava/lang/String;

.field public static sCameraContinueSupport:Ljava/lang/String;

.field public static sCameraCustomPicSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sCameraEISDefault:Ljava/lang/String;

.field public static sCameraFlashStatus:Ljava/lang/String;

.field public static sCameraFocusSoundDefault:Ljava/lang/String;

.field public static sCameraFocusSoundSupport:Ljava/lang/String;

.field public static sCameraFrontVideoSizeDefault:Ljava/lang/String;

.field public static sCameraGenerParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sCameraGuideSwitch:Ljava/lang/String;

.field public static sCameraLocationSwitch:Ljava/lang/String;

.field public static sCameraPhotoMirrorSupport:Ljava/lang/String;

.field public static sCameraPhotoMirrordefault:Ljava/lang/String;

.field public static sCameraPhotoShutterSoundDefault:Ljava/lang/String;

.field public static sCameraPictureQuality:Ljava/lang/String;

.field public static sCameraSaveSdcardSupport:Ljava/lang/String;

.field public static sCameraTorchStatus:Ljava/lang/String;

.field public static sCameraZSDDefault:Ljava/lang/String;

.field public static sCustomPreviewSize:Ljava/lang/String;

.field public static sGalleryBrightnessLevel:Ljava/lang/String;

.field public static sGalleryZoomLeval:Ljava/lang/String;

.field public static sIKOModeMenuOrder:Ljava/lang/String;

.field public static sQrCodeModeMenuOrder:Ljava/lang/String;

.field public static sSlrModePreviewSizeHeight:Ljava/lang/String;

.field public static sSlrModePreviewSizeWidth:Ljava/lang/String;

.field public static slr_mode_previewsize_radio_default:Ljava/lang/String;

.field public static update_setting_default:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraCustomPicSizeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->parsexml()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parsexml()V
    .locals 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/freemeCamConfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "CameraCustomXmlParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find or open xml file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/vendor/etc/freemeCamConfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_33

    if-eqz v2, :cond_32

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Param"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_30

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FACE_BEAUTY_GRADE_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setFBGDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string v4, "CAMERA_PICTURESIZE_BACK_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setCPBDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string v4, "SLR_MODE_PREVIEWSIZE_RADIO_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setSMPRDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const-string v4, "CAMERA_PICTURESIZE_FRONT_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setCPFDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string v4, "CAMERA_PICTURESIZE_WIDE_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setCPWDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v4, "CAMERA_PICTURESIZE_MICRO_LEN_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setCMLValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v4, "CAMERA_MODE_BACK_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setCMBDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v4, "CAMERA_MODE_FRONT_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setCMFDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v4, "CAMERA_RESOURCE_CENTER_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setCRCDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string v4, "CAMERA_SHUTTER_SOUND_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setShutterSoundValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v4, "UPDATE_SETTING_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setUpdateSetValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string v4, "FAKE_FOCUS_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setFakeFocusValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v4, "CAMERA_GESTURESHOT_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setGestureShotValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const-string v4, "CAMERA_PLUGIN_POSE_SHOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setPluginPoseValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v4, "CAMERA_PLUGIN_CHILD_SHOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setPluginChildValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string v4, "CAMERA_PLUGIN_WATERMARK_SHOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setPluginWatermarkValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string v4, "CAMERA_PLUGIN_FILMMODE_SHOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setPluginFilmmodeValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const-string v4, "CAMERA_FRONT_PLUGIN_CHILD_SHOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v3}, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->setFrontPluginChildValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    const-string v4, "CAMERA_PHOTO_MIRROR_SUPPORT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraPhotoMirrorSupport:Ljava/lang/String;

    goto/16 :goto_2

    :cond_12
    const-string v4, "CAMERA_SAVE_SDCARD_SUPPORT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraSaveSdcardSupport:Ljava/lang/String;

    goto/16 :goto_2

    :cond_13
    const-string v4, "CAMERA_BEAUTY_FACE_SHOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_face_beauty_show:Ljava/lang/String;

    goto/16 :goto_2

    :cond_14
    const-string v4, "CAMERA_PORTRAIT_SHOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_portrait_show:Ljava/lang/String;

    goto/16 :goto_2

    :cond_15
    const-string v4, "CAMERA_VIDEO_BEAUTY_FACE_SHOW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_video_face_beauty_show:Ljava/lang/String;

    goto/16 :goto_2

    :cond_16
    const-string v4, "CAMERA_LOCATION_SWITCH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraLocationSwitch:Ljava/lang/String;

    goto/16 :goto_2

    :cond_17
    const-string v4, "CAMERA_FLASH_STASTUS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFlashStatus:Ljava/lang/String;

    goto/16 :goto_2

    :cond_18
    const-string v4, "CAMERA_TORCH_STASTUS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraTorchStatus:Ljava/lang/String;

    goto/16 :goto_2

    :cond_19
    const-string v4, "CAMERA_GUIDE_SWITCH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGuideSwitch:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1a
    const-string v4, "CAMERA_FREEME_IKO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_freeme_iko:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1b
    const-string v4, "CAMERA_BRIGHTNESS_LEVEL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraBrightnessLevel:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1c
    const-string v4, "GALLERY_BRIGHTNESS_LEVEL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sGalleryBrightnessLevel:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1d
    const-string v4, "CUSTOM_PREVIEW_SIZE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCustomPreviewSize:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1e
    const-string v4, "CAMERA_PHOTO_MIRROR_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraPhotoMirrordefault:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1f
    const-string v4, "GALLERY_ZOOM_LEVEL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sGalleryZoomLeval:Ljava/lang/String;

    goto/16 :goto_2

    :cond_20
    const-string v4, "CAMERA_ZSD_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraZSDDefault:Ljava/lang/String;

    goto/16 :goto_2

    :cond_21
    const-string v4, "VIDEO_STABILIZATION_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraEISDefault:Ljava/lang/String;

    goto/16 :goto_2

    :cond_22
    const-string v4, "CAMERA_PICTURE_QUALITY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraPictureQuality:Ljava/lang/String;

    goto/16 :goto_2

    :cond_23
    const-string v4, "CAMERA_CONTINUE_SUPPORT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraContinueSupport:Ljava/lang/String;

    goto/16 :goto_2

    :cond_24
    const-string v4, "CAMERA_CONTINUE_NUM_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraContinueNumDefault:Ljava/lang/String;

    goto/16 :goto_2

    :cond_25
    const-string v4, "CAMERA_ANTIBANDING_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraAntibandingDefault:Ljava/lang/String;

    goto/16 :goto_2

    :cond_26
    const-string v4, "CAMERA_FOCUS_SOUND_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFocusSoundDefault:Ljava/lang/String;

    goto/16 :goto_2

    :cond_27
    const-string v4, "QR_CODE_MODE_MENU_ORDER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sQrCodeModeMenuOrder:Ljava/lang/String;

    goto/16 :goto_2

    :cond_28
    const-string v4, "SLR_MODE_PREVIEWSIZE_WIDTH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sSlrModePreviewSizeWidth:Ljava/lang/String;

    goto/16 :goto_2

    :cond_29
    const-string v4, "SLR_MODE_PREVIEWSIZE_HEIGHT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sSlrModePreviewSizeHeight:Ljava/lang/String;

    goto/16 :goto_2

    :cond_2a
    const-string v4, "CAMERA_FACE_BEAUTY_MAX_PREVIEW_WIDTH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sBeautyFaceMaxPreviewWidth:Ljava/lang/String;

    goto/16 :goto_2

    :cond_2b
    const-string v4, "IKO_MODE_MENU_ORDER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sIKOModeMenuOrder:Ljava/lang/String;

    goto :goto_2

    :cond_2c
    const-string v4, "CAMERA_BACKGROUND_VIRTUAL_SUPPORT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sBeautyVideoModeSupport:Ljava/lang/String;

    goto :goto_2

    :cond_2d
    const-string v4, "CAMERA_FOCUS_SOUND_SUPPORT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFocusSoundSupport:Ljava/lang/String;

    goto :goto_2

    :cond_2e
    const-string v4, "CAMERA_BACK_VIDEOSIZE_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraBackVideoSizeDefault:Ljava/lang/String;

    goto :goto_2

    :cond_2f
    const-string v4, "CAMERA_FRONT_VIDEOSIZE_DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    sput-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFrontVideoSizeDefault:Ljava/lang/String;

    goto :goto_2

    :cond_30
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "PictureSizeMap"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraCustomPicSizeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_31
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GeneralParamMap"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    :goto_2
    :pswitch_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v2, "CameraCustomXmlParser"

    const-string v3, "Got execption parsing permissions"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v2, "CameraCustomXmlParser"

    const-string v3, "Got execption parsing permissions"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void

    :catch_4
    const-string v1, "CameraCustomXmlParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find or open xml file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setCMBDValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_mode_back_default:Ljava/lang/String;

    return-void
.end method

.method public static setCMFDValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_mode_front_default:Ljava/lang/String;

    return-void
.end method

.method public static setCMLValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_micro_len_default:Ljava/lang/String;

    return-void
.end method

.method public static setCPBDValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_back_default:Ljava/lang/String;

    return-void
.end method

.method public static setCPFDValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_front_default:Ljava/lang/String;

    return-void
.end method

.method public static setCPWDValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_wide_default:Ljava/lang/String;

    return-void
.end method

.method public static setCRCDValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_resource_center_default:Ljava/lang/String;

    return-void
.end method

.method public static setFBGDValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->faceBeauty_grade_default:Ljava/lang/String;

    return-void
.end method

.method public static setFakeFocusValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->fake_focus_default:Ljava/lang/String;

    return-void
.end method

.method public static setFrontPluginChildValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_front_plugin_child_show:Ljava/lang/String;

    return-void
.end method

.method public static setGestureShotValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_gestureshot_default:Ljava/lang/String;

    return-void
.end method

.method public static setPluginChildValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_plugin_child_show:Ljava/lang/String;

    return-void
.end method

.method public static setPluginFilmmodeValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_plugin_filmmode_show:Ljava/lang/String;

    return-void
.end method

.method public static setPluginPoseValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_plugin_pose_show:Ljava/lang/String;

    return-void
.end method

.method public static setPluginWatermarkValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_plugin_watermark_show:Ljava/lang/String;

    return-void
.end method

.method public static setSMPRDValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->slr_mode_previewsize_radio_default:Ljava/lang/String;

    return-void
.end method

.method public static setShutterSoundValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraPhotoShutterSoundDefault:Ljava/lang/String;

    return-void
.end method

.method public static setUpdateSetValue(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->update_setting_default:Ljava/lang/String;

    return-void
.end method
