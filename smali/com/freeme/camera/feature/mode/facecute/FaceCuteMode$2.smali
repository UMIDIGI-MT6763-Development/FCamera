.class Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$2;
.super Ljava/lang/Object;
.source "FaceCuteMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$300(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$400(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setVisibility(I)V

    return-void
.end method
