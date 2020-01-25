.class Lcom/freeme/camera/feature/setting/exposure/ExposureRestriction;
.super Ljava/lang/Object;
.source "ExposureRestriction.java"


# static fields
.field private static sRelation:Lcom/freeme/camera/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freeme/camera/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureRestriction;->sRelation:Lcom/freeme/camera/common/relation/RelationGroup;

    return-object v0
.end method
