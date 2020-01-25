.class Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;
.super Ljava/lang/Object;
.source "SaveSdcard.java"

# interfaces
.implements Lcom/freeme/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->reloadThumbnailData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/freeme/camera/util/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$700(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getWorkerHandler()Lcom/freeme/camera/CameraActivity$WorkerHandler;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;-><init>(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/CameraActivity$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
