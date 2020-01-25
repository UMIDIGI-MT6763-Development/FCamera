.class Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$3;
.super Ljava/lang/Object;
.source "BeautyFaceMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$200(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$200(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$600(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->removeView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$3;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$202(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    :cond_0
    return-void
.end method
