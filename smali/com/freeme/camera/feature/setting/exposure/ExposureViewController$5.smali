.class Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$5;
.super Ljava/lang/Object;
.source "ExposureViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->setViewEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$5;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$5;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$5;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$5;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$5;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->setViewEnabled(Z)V

    :cond_0
    return-void
.end method
