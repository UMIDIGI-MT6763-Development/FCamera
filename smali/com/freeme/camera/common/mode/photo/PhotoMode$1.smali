.class Lcom/freeme/camera/common/mode/photo/PhotoMode$1;
.super Ljava/lang/Object;
.source "PhotoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/mode/photo/PhotoMode;->onPreviewCallback([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/photo/PhotoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/photo/PhotoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode$1;->this$0:Lcom/freeme/camera/common/mode/photo/PhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[stopAllAnimations] run"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode$1;->this$0:Lcom/freeme/camera/common/mode/photo/PhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->access$300(Lcom/freeme/camera/common/mode/photo/PhotoMode;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode$1;->this$0:Lcom/freeme/camera/common/mode/photo/PhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->access$400(Lcom/freeme/camera/common/mode/photo/PhotoMode;)V

    return-void
.end method
