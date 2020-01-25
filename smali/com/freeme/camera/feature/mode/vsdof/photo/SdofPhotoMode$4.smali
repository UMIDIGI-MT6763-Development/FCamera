.class Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$4;
.super Ljava/lang/Object;
.source "SdofPhotoMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$4;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWarning(I)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$1300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StereoWarningCallback onWarning] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$1300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "Warning message don\'t need to show"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$4;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->access$2500(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->showWarningView(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
