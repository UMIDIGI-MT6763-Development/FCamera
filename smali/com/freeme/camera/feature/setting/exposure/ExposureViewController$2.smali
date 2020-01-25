.class Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;
.super Ljava/lang/Object;
.source "ExposureViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->resetExposureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[resetExposureView] mExposureView is null"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/Exposure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resetExposureView] size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->setListener(Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/Exposure;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->setListener(Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->resetExposureView()V

    :goto_0
    return-void
.end method
