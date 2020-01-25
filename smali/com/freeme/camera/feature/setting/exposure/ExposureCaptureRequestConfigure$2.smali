.class Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$2;
.super Ljava/lang/Object;
.source "ExposureCaptureRequestConfigure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->captureStandardPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$2;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->sendSettingChangeRequest()V

    return-void
.end method
