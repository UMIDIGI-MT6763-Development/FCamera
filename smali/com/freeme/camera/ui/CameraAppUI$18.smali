.class Lcom/freeme/camera/ui/CameraAppUI$18;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$listener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$18;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$18;->val$listener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$18;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1200(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/preview/PreviewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$18;->val$listener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/preview/PreviewManager;->clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    return-void
.end method
