.class public Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;
.super Ljava/lang/Object;
.source "VideoRestriction.java"


# static fields
.field private static final VIDEO_MODE_KEY:Ljava/lang/String;

.field private static sPreviewRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

.field private static sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sPreviewRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sPreviewRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v0, "vendor.mtk.camera.app.fd.video"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sPreviewRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_focus,key_scene_mode,key_face_detection"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sPreviewRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    sget-object v2, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    const-string v3, "preview"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_focus"

    const-string v3, "continuous-video"

    const-string v4, "continuous-video,auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_scene_mode"

    const-string v3, "off"

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->getVideoSceneRestriction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_face_detection"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sPreviewRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_focus,key_scene_mode"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sPreviewRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    sget-object v2, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    const-string v3, "preview"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_focus"

    const-string v3, "continuous-video"

    const-string v4, "continuous-video,auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    const-string v2, "key_scene_mode"

    const-string v3, "off"

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->getVideoSceneRestriction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    sget-object v2, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->VIDEO_MODE_KEY:Ljava/lang/String;

    const-string v3, "stop-recording"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_focus"

    const-string v3, "continuous-video"

    const-string v4, "continuous-video,auto"

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

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sPreviewRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method

.method static getRecordingRelationForMode()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method

.method static getVideoSceneRestriction()Ljava/lang/String;
    .locals 1

    const-string v0, "off,night,sunset,party,portrait,landscape,night-portrait,theatre,beach,snow,steadyphoto,sports,candlelight"

    return-object v0
.end method
