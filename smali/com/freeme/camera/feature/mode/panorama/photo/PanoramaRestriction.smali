.class public Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;
.super Ljava/lang/Object;
.source "PanoramaRestriction.java"


# static fields
.field private static final KEY_AIS:Ljava/lang/String; = "key_ais"

.field private static final KEY_ANTI_FLICKER:Ljava/lang/String; = "key_anti_flicker"

.field private static final KEY_CAMERA_SWITCHER:Ljava/lang/String; = "key_camera_switcher"

.field private static final KEY_CAMERA_ZOOM:Ljava/lang/String; = "key_camera_zoom"

.field private static final KEY_COLOR_EFFECT:Ljava/lang/String; = "key_color_effect"

.field private static final KEY_CSHOT:Ljava/lang/String; = "key_continuous_shot"

.field private static final KEY_DNG:Ljava/lang/String; = "key_dng"

.field private static final KEY_DUAL_ZOOM:Ljava/lang/String; = "key_dual_zoom"

.field private static final KEY_EXPOSURE:Ljava/lang/String; = "key_exposure"

.field private static final KEY_FACE_DETECTION:Ljava/lang/String; = "key_face_detection"

.field private static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field private static final KEY_FOCUS:Ljava/lang/String; = "key_focus"

.field private static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field private static final KEY_PANORAMA:Ljava/lang/String;

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "key_scene_mode"

.field private static final KEY_SELF_TIMER:Ljava/lang/String; = "key_self_timer"

.field private static final KEY_WHITE_BALANCE:Ljava/lang/String; = "key_white_balance"

.field private static final KEY_ZSD:Ljava/lang/String; = "key_zsd"

.field private static s3aRelation:Lcom/freeme/camera/common/relation/RelationGroup;

.field private static sRelation:Lcom/freeme/camera/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->KEY_PANORAMA:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->KEY_PANORAMA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_continuous_shot,key_flash,key_face_detection,key_hdr,key_zsd,key_dng,key_self_timer,key_camera_switcher,key_scene_mode,key_color_effect,key_ais"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->KEY_PANORAMA:Ljava/lang/String;

    const-string v3, "on"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_continuous_shot"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_flash"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_face_detection"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_hdr"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_zsd"

    const-string v3, "on"

    const-string v4, "on"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_dng"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_self_timer"

    const-string v3, "0"

    const-string v4, "0"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_camera_switcher"

    const-string v3, "back"

    const-string v4, "back"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_scene_mode"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_color_effect"

    const-string v3, "none"

    const-string v4, "none"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_ais"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_camera_zoom"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_anti_flicker"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->s3aRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->s3aRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->KEY_PANORAMA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->s3aRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_focus,key_exposure,key_white_balance,key_dual_zoom"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->s3aRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->KEY_PANORAMA:Ljava/lang/String;

    const-string v3, "on"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_focus"

    const-string v3, "auto"

    const-string v4, "auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_exposure"

    const-string v3, "exposure-lock"

    const-string v4, "true"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_white_balance"

    const-string v3, "white-balance-lock"

    const-string v4, "true"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_dual_zoom"

    const-string v3, "limit"

    const-string v4, "limit"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->s3aRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->KEY_PANORAMA:Ljava/lang/String;

    const-string v3, "off"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_focus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_exposure"

    const-string v3, "exposure-lock"

    const-string v4, "false"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_white_balance"

    const-string v3, "white-balance-lock"

    const-string v4, "false"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_dual_zoom"

    const-string v3, "on"

    const-string v4, "on, off"

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

.method public static get3aRestriction()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->s3aRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method
