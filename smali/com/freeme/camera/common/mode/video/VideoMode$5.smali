.class Lcom/freeme/camera/common/mode/video/VideoMode$5;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/video/device/IDeviceController$RestrictionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/video/VideoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/VideoMode$5;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRestriction()Lcom/freeme/camera/common/relation/Relation;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$5;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-virtual {v0}, Lcom/freeme/camera/common/mode/video/VideoMode;->getPreviewedRestriction()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method
