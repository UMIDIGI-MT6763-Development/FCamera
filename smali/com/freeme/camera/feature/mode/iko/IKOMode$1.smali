.class Lcom/freeme/camera/feature/mode/iko/IKOMode$1;
.super Ljava/lang/Object;
.source "IKOMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/IKOMode;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$1;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$1;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$300(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$1;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$200(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
