.class public Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;
.super Ljava/lang/Object;
.source "IntentRestriction.java"


# static fields
.field private static final INTENT_VIDEO_KEY:Ljava/lang/String; = "com.freeme.camera.common.mode.video.intentvideo.IntentVideoMode"

.field private static sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

.field private static sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "com.freeme.camera.common.mode.video.intentvideo.IntentVideoMode"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v0, "vendor.mtk.camera.app.fd.video"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v2, "key_video_quality,key_focus,key_face_detection"

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v2, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v3, "com.freeme.camera.common.mode.video.intentvideo.IntentVideoMode"

    const-string v4, "preview"

    invoke-direct {v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_video_quality"

    const-string v4, "0"

    const-string v5, "0"

    invoke-virtual {v2, v3, v4, v5}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v2

    const-string v3, "key_focus"

    const-string v4, "continuous-video"

    const-string v5, "continuous-video,auto"

    invoke-virtual {v2, v3, v4, v5}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v2

    const-string v3, "key_face_detection"

    const-string v4, "off"

    const-string v5, "off"

    invoke-virtual {v2, v3, v4, v5}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v2, "key_video_quality,key_focus"

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v2, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v3, "com.freeme.camera.common.mode.video.intentvideo.IntentVideoMode"

    const-string v4, "preview"

    invoke-direct {v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_video_quality"

    const-string v4, "0"

    const-string v5, "0"

    invoke-virtual {v2, v3, v4, v5}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v2

    const-string v3, "key_focus"

    const-string v4, "continuous-video"

    const-string v5, "continuous-video,auto"

    invoke-virtual {v2, v3, v4, v5}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v2, "com.freeme.camera.common.mode.video.intentvideo.IntentVideoMode"

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v2, "key_focus"

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    const-string v0, "vendor.mtk.camera.app.fd.video"

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v2, "com.freeme.camera.common.mode.video.intentvideo.IntentVideoMode"

    const-string v3, "recording"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_focus"

    const-string v3, "auto"

    const-string v4, "auto"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v2, "com.freeme.camera.common.mode.video.intentvideo.IntentVideoMode"

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

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method

.method static getRecordingRelationGroupForMode()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/intentvideo/IntentRestriction;->sRecordingRelationGroupForMode:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method
