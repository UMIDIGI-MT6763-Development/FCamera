.class public Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionRestriction;
.super Ljava/lang/Object;
.source "SlowMotionRestriction.java"


# static fields
.field private static final KEY_ANTI_FLICKER:Ljava/lang/String; = "key_anti_flicker"

.field private static final KEY_BRIGHTNESS:Ljava/lang/String; = "key_brightness"

.field private static final KEY_CAMERA_SWITCHER:Ljava/lang/String; = "key_camera_switcher"

.field private static final KEY_COLOR_EFFECT:Ljava/lang/String; = "key_color_effect"

.field private static final KEY_CONTRAST:Ljava/lang/String; = "key_contrast"

.field private static final KEY_CSHOT:Ljava/lang/String; = "key_continuous_shot"

.field private static final KEY_EIS:Ljava/lang/String; = "key_eis"

.field private static final KEY_FACE_DETECTION:Ljava/lang/String; = "key_face_detection"

.field private static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field private static final KEY_FOCUS:Ljava/lang/String; = "key_focus"

.field private static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field private static final KEY_HUE:Ljava/lang/String; = "key_hue"

.field private static final KEY_IMAGE_PROPERTIES:Ljava/lang/String; = "key_image_properties"

.field private static final KEY_MICROPHONE:Ljava/lang/String; = "key_microphone"

.field private static final KEY_NOISE_REDUCTION:Ljava/lang/String; = "key_noise_reduction"

.field private static final KEY_SATURATION:Ljava/lang/String; = "key_saturation"

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "key_scene_mode"

.field private static final KEY_SHARPNESS:Ljava/lang/String; = "key_sharpness"

.field private static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "key_video_quality"

.field private static final KEY_WHITE_BALANCE:Ljava/lang/String; = "key_white_balance"

.field private static final SLOW_MOTION_KEY:Ljava/lang/String; = "com.freeme.camera.feature.mode.slowmotion.SlowMotionMode"

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "com.freeme.camera.feature.mode.slowmotion.SlowMotionMode"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_eis,key_scene_mode,key_microphone,key_hdr,key_color_effect,key_flash,key_white_balance,key_noise_reduction,key_camera_switcher,key_video_quality,key_focus,key_anti_flicker,key_image_properties,key_brightness,key_contrast,key_hue,key_saturation,key_sharpness,key_face_detection,key_continuous_shot"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v2, "com.freeme.camera.feature.mode.slowmotion.SlowMotionMode"

    const-string v3, "preview"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_eis"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_scene_mode"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_hdr"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_noise_reduction"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_microphone"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_flash"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_brightness"

    const-string v3, "middle"

    const-string v4, "middle"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_contrast"

    const-string v3, "middle"

    const-string v4, "middle"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_hue"

    const-string v3, "middle"

    const-string v4, "middle"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_saturation"

    const-string v3, "middle"

    const-string v4, "middle"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_sharpness"

    const-string v3, "middle"

    const-string v4, "middle"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_white_balance"

    const-string v3, "auto"

    const-string v4, "auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_anti_flicker"

    const-string v3, "auto"

    const-string v4, "auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_camera_switcher"

    const-string v3, "back"

    const-string v4, "back"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_color_effect"

    const-string v3, "none"

    const-string v4, "none"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_video_quality"

    const-string v3, "109"

    const-string v4, "109"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_focus"

    const-string v3, "continuous-video"

    const-string v4, "continuous-video,auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_face_detection"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_continuous_shot"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPreviewRelation()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method
