.class Lcom/freeme/camera/feature/mode/portrait/PortraitMode$1;
.super Ljava/lang/Object;
.source "PortraitMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$1;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$1;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$200(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$1;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$300(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode$1;->this$0:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->access$400(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    return-void
.end method
