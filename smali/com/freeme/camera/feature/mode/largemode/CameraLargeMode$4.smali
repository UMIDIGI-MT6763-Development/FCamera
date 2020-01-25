.class Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$4;
.super Ljava/lang/Object;
.source "CameraLargeMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->onPreviewCallback([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$4;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$1700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[stopAllAnimations] run"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$4;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$2300(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)V

    return-void
.end method
