.class Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;
.super Ljava/lang/Object;
.source "ContinuousShot.java"

# interfaces
.implements Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/ContinuousShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendorDataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShot;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShot;Lcom/freeme/camera/feature/setting/ContinuousShot$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShot;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(I[BII)V
    .locals 1

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onDataCallback] msgID = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", number = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIsShutterCallbackReceived = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$300(Lcom/freeme/camera/feature/setting/ContinuousShot;)Z

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$300(Lcom/freeme/camera/feature/setting/ContinuousShot;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-virtual {p1, p3}, Lcom/freeme/camera/feature/setting/ContinuousShot;->onContinuousShotDone(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$400(Lcom/freeme/camera/feature/setting/ContinuousShot;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object p1

    sget-object p2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_INIT:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot$VendorDataCallback;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/ContinuousShot;->onContinuousShotStopped()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDataTaken(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDataTaken] message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
