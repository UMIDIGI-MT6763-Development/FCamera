.class Lcom/freeme/camera/feature/mode/portrait/PortraitMode$3;
.super Ljava/lang/Object;
.source "PortraitMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->onPreviewCallback([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$3;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$900()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[stopAllAnimations] run"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$3;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$1000(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$3;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$1100(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)V

    return-void
.end method
