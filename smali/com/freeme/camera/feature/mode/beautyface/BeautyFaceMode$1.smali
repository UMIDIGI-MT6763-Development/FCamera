.class Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$1;
.super Ljava/lang/Object;
.source "BeautyFaceMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    new-instance v1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$300(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$400(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/CameraActivity;

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;-><init>(Landroid/view/ViewGroup;Lcom/freeme/camera/CameraActivity;)V

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$202(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    return-void
.end method
