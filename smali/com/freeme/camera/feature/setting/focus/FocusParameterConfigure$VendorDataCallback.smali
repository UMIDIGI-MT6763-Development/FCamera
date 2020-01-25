.class Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$VendorDataCallback;
.super Ljava/lang/Object;
.source "FocusParameterConfigure.java"

# interfaces
.implements Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendorDataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$VendorDataCallback;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$VendorDataCallback;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(I[BII)V
    .locals 0

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[onDataCallback] data = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$VendorDataCallback;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->access$400(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/freeme/camera/feature/setting/focus/Focus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/focus/Focus;->setAfData([B)V

    :cond_0
    return-void
.end method

.method public onDataTaken(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

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
