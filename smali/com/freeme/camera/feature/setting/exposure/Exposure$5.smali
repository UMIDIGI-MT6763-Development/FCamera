.class Lcom/freeme/camera/feature/setting/exposure/Exposure$5;
.super Ljava/lang/Object;
.source "Exposure.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/exposure/Exposure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$5;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$5;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$700(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$5;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$802(Lcom/freeme/camera/feature/setting/exposure/Exposure;I)I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$5;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$000(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onOrientationChanged] mCompensationOrientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$5;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$800(Lcom/freeme/camera/feature/setting/exposure/Exposure;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$5;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$900(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$5;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$800(Lcom/freeme/camera/feature/setting/exposure/Exposure;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->setOrientation(I)V

    return-void
.end method
