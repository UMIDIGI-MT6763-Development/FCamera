.class Lcom/freeme/camera/feature/setting/focus/FocusRestriction;
.super Ljava/lang/Object;
.source "FocusRestriction.java"


# static fields
.field private static final EXPOSURE_KEY:Ljava/lang/String; = "key_exposure"

.field static final EXPOSURE_LOCK:Ljava/lang/String; = "exposure-lock"

.field private static final FLASH_KEY:Ljava/lang/String; = "key_flash"

.field static final FOCUS_LOCK:Ljava/lang/String; = "focus lock"

.field static final FOCUS_UNLOCK:Ljava/lang/String; = "focus unlock"

.field private static final KEY_FACE_DETECTION:Ljava/lang/String; = "key_face_detection"

.field private static final KEY_FOCUS:Ljava/lang/String; = "key_focus"

.field private static sAeAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

.field private static sAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

.field private static sRelation:Lcom/freeme/camera/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_face_detection"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v2, "key_focus"

    const-string v3, "auto"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_face_detection"

    const-string v3, "off"

    const-string v4, "off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_exposure"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v2, "key_focus"

    const-string v3, "focus lock"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_exposure"

    const-string v3, "exposure-lock"

    const-string v4, "true"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v2, "key_focus"

    const-string v3, "focus unlock"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_exposure"

    const-string v3, "exposure-lock"

    const-string v4, "false"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAeAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAeAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAeAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    const-string v1, "key_flash"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAeAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v2, "key_focus"

    const-string v3, "focus lock"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_flash"

    const-string v3, "off"

    const-string v4, "on, auto, off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/relation/Relation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/Relation$Builder;->build()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->addRelation(Lcom/freeme/camera/common/relation/Relation;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAeAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    new-instance v1, Lcom/freeme/camera/common/relation/Relation$Builder;

    const-string v2, "key_focus"

    const-string v3, "focus unlock"

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

.method static getAeAfLockRestriction()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAeAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method

.method static getAfLockRestriction()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sAfLockRelationGroup:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method

.method static getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method
