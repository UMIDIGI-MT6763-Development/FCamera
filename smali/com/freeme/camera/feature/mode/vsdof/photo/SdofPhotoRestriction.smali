.class public Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;
.super Ljava/lang/Object;
.source "SdofPhotoRestriction.java"


# static fields
.field private static final KEY_ANTI_FLICKER:Ljava/lang/String; = "key_anti_flicker"

.field private static final KEY_CAMERA_SWITCHER:Ljava/lang/String; = "key_camera_switcher"

.field private static final KEY_CAMERA_ZOOM:Ljava/lang/String; = "key_camera_zoom"

.field private static final KEY_CSHOT:Ljava/lang/String; = "key_continuous_shot"

.field private static final KEY_DNG:Ljava/lang/String; = "key_dng"

.field private static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field private static final KEY_ZSD:Ljava/lang/String; = "key_zsd"

.field private static final PHOTO_MODE_KEY:Ljava/lang/String;

.field private static sCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private static sDataStore:Lcom/freeme/camera/common/relation/DataStore;

.field private static sRelation:Lcom/freeme/camera/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->PHOTO_MODE_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->sDataStore:Lcom/freeme/camera/common/relation/DataStore;

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->PHOTO_MODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_continuous_shot,key_flash,key_zsd,key_dng,key_camera_switcher,key_camera_zoom,key_anti_flicker"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->PHOTO_MODE_KEY:Ljava/lang/String;

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

    const-string v2, "key_camera_switcher"

    const-string v3, "back"

    const-string v4, "back"

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

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method

.method public static setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;Lcom/freeme/camera/common/relation/DataStore;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->sCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sput-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->sDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-void
.end method
