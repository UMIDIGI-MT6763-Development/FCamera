.class Lcom/freeme/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/freeme/camera/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity$1;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailClicked()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity$1;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v0}, Lcom/freeme/camera/CameraActivity;->access$000(Lcom/freeme/camera/CameraActivity;)Lcom/freeme/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/CameraAppUI;->getCaptureState()Lcom/freeme/camera/common/CaptureState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity$1;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/CameraActivity$1;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v1}, Lcom/freeme/camera/CameraActivity;->access$000(Lcom/freeme/camera/CameraActivity;)Lcom/freeme/camera/ui/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/ui/CameraAppUI;->getClickState()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/OnScreenHint;->showToast()V

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity$1;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v0}, Lcom/freeme/camera/CameraActivity;->access$000(Lcom/freeme/camera/CameraActivity;)Lcom/freeme/camera/ui/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/CameraAppUI;->setClickState(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity$1;->this$0:Lcom/freeme/camera/CameraActivity;

    iget-object v1, v0, Lcom/freeme/camera/CameraActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity;->goToGallery(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method
