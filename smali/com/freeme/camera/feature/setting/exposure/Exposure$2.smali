.class Lcom/freeme/camera/feature/setting/exposure/Exposure$2;
.super Ljava/lang/Object;
.source "Exposure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/exposure/Exposure;->onTrackingTouchStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$2;->val$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$200(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$400(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v1, "key_exposure_view"

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$2;->val$start:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
