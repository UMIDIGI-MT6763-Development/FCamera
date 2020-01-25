.class Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$5;
.super Ljava/lang/Object;
.source "FaceCuteMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->onPreviewCallback([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$5;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$5;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$600(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$5;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$500(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$5;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$1200(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$602(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$5;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$700(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmFunnyFaceView()Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$5;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$1300(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->setFunnyPictureCallback(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;)V

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->show()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$5;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$1400(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V

    :cond_0
    return-void
.end method
