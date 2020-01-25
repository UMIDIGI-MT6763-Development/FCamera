.class Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;
.super Ljava/lang/Object;
.source "SdofPhotoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$200(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$300(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$400(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$500(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-interface {v0, v3, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$600(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$700(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/CameraAppUI;->getTopBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
