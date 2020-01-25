.class Lcom/freeme/camera/feature/setting/exposure/Exposure$3;
.super Ljava/lang/Object;
.source "Exposure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$3;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure$3;->this$0:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->access$500(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->triggerShutterButtonClick(I)V

    return-void
.end method
