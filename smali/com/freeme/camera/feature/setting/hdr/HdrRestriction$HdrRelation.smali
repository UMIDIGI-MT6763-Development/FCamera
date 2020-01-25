.class Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;
.super Ljava/lang/Object;
.source "HdrRestriction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HdrRelation"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;->mValue:Ljava/lang/String;

    return-object v0
.end method
