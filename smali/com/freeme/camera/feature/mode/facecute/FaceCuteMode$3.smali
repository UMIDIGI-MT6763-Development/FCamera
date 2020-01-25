.class Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$3;
.super Ljava/lang/Object;
.source "FaceCuteMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$3;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$3;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$600(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$3;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$500(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$3;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$602(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$3;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$502(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$3;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$700(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity;->showOrNotFFBNoFaceIndicator(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$3;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$800(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setVisibility(I)V

    return-void
.end method
