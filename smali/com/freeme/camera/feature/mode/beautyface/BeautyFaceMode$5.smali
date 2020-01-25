.class Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$5;
.super Ljava/lang/Object;
.source "BeautyFaceMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->onPreviewCallback([BI)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$1000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[stopAllAnimations] run"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$1100(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode$5;->this$0:Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;->access$1200(Lcom/freeme/camera/feature/mode/beautyface/BeautyFaceMode;)V

    return-void
.end method
