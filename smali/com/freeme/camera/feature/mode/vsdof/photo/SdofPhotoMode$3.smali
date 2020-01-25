.class Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$3;
.super Ljava/lang/Object;
.source "SdofPhotoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->stopAllAnimations()V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$1300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[stopAllAnimations] run"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$1400(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$1500(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$1600(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V

    return-void
.end method
