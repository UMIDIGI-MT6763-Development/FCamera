.class Lcom/freeme/camera/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/CameraActivity;->showOrNotFFBNoFaceIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/CameraActivity;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/freeme/camera/CameraActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity$2;->this$0:Lcom/freeme/camera/CameraActivity;

    iput-boolean p2, p0, Lcom/freeme/camera/CameraActivity$2;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity$2;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v0}, Lcom/freeme/camera/CameraActivity;->access$000(Lcom/freeme/camera/CameraActivity;)Lcom/freeme/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/CameraAppUI;->getFFBNoFaceIndicator()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/CameraActivity$2;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v1}, Lcom/freeme/camera/CameraActivity;->access$000(Lcom/freeme/camera/CameraActivity;)Lcom/freeme/camera/ui/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/ui/CameraAppUI;->getFFBNoFaceToast()Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/freeme/camera/CameraActivity$2;->val$isShow:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
