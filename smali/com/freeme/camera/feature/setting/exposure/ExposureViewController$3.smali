.class Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$3;
.super Ljava/lang/Object;
.source "ExposureViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->initExposureValues([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

.field final synthetic val$values:[I


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;[I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$3;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$3;->val$values:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$3;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[initExposureValues] mExposureView is null"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$3;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$3;->val$values:[I

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->initExposureView([I)V

    return-void
.end method
