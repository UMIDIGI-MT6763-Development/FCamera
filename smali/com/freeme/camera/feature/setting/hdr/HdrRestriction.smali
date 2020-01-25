.class Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;
.super Ljava/lang/Object;
.source "HdrRestriction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;
    }
.end annotation


# static fields
.field private static final KEY_BRIGHTNESS_MODE:Ljava/lang/String; = "brightness"

.field private static final KEY_CONTRAST_MODE:Ljava/lang/String; = "contrast"

.field private static final KEY_EDGE_MODE:Ljava/lang/String; = "edge"

.field private static final KEY_HUE_MODE:Ljava/lang/String; = "hue"

.field private static final KEY_SATURATION_MODE:Ljava/lang/String; = "saturation"

.field private static final KEY_STEREO_DEPTH_AF_MODE:Ljava/lang/String; = "stereo-depth-af"

.field private static final KEY_STEREO_DISTANCE_MODE:Ljava/lang/String; = "stereo-distance-measurement"

.field private static final VALUE_MIDDLE:Ljava/lang/String; = "middle"

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;",
            ">;"
        }
    .end annotation
.end field

.field private static sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_hdr"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_flash, key_scene_mode, key_dng, key_continuous_shot, key_white_balance, key_color_effect, key_zsd, key_iso, key_ais, key_asd,key_brightness,key_contrast,key_hue,key_saturation,key_sharpness,key_camera_ai"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v2, "key_hdr"

    const-string v3, "on"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_flash"

    const-string v3, "off"

    const-string v4, "off,on,auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_scene_mode"

    const-string v3, "hdr"

    const-string v4, "hdr"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_dng"

    const-string v3, "off"

    const-string v4, "off,on"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_continuous_shot"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_white_balance"

    const-string v3, "auto"

    const-string v4, "auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_color_effect"

    const-string v3, "none"

    const-string v4, "none"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_iso"

    const-string v3, "0"

    const-string v4, "0"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_ais"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_asd"

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

    const-string v2, "key_camera_ai"

    const-string v3, "off"

    const-string v4, "on,off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v2, "key_hdr"

    const-string v3, "auto"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_flash"

    const-string v3, "off"

    const-string v4, "off,on,auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_scene_mode"

    const-string v3, "hdr"

    const-string v4, "hdr"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_dng"

    const-string v3, "off"

    const-string v4, "off,on"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_continuous_shot"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_white_balance"

    const-string v3, "auto"

    const-string v4, "auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_color_effect"

    const-string v3, "none"

    const-string v4, "none"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_iso"

    const-string v3, "0"

    const-string v4, "0"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_ais"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_asd"

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

    const-string v2, "key_camera_ai"

    const-string v3, "off"

    const-string v4, "on,off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHdrRelation()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;

    const-string v2, "stereo-distance-measurement"

    const-string v3, "off"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;

    const-string v2, "stereo-depth-af"

    const-string v3, "off"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;

    const-string v2, "brightness"

    const-string v3, "middle"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;

    const-string v2, "saturation"

    const-string v3, "middle"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;

    const-string v2, "contrast"

    const-string v3, "middle"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;

    const-string v2, "edge"

    const-string v3, "middle"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;

    const-string v2, "hue"

    const-string v3, "middle"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sExtendRelation:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static getHdrRestriction()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method
