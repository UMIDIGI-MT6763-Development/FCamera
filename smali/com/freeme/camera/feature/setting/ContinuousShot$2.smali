.class Lcom/freeme/camera/feature/setting/ContinuousShot$2;
.super Ljava/lang/Object;
.source "ContinuousShot.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/ContinuousShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShot;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$300(Lcom/freeme/camera/feature/setting/ContinuousShot;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[onPictureTaken] current CShot shutter callback not return, this is not CShot jpegCallback, dismiss the data."

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/ContinuousShot;->stopContinuousShot()Z

    return-void

    :cond_1
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/setting/ContinuousShot;->saveJpeg([B)V

    return-void
.end method
