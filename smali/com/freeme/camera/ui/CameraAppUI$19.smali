.class Lcom/freeme/camera/ui/CameraAppUI$19;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->addToIndicatorView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$priority:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$19;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$19;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/freeme/camera/ui/CameraAppUI$19;->val$priority:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$19;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1000(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/IndicatorViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$19;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/freeme/camera/ui/CameraAppUI$19;->val$priority:I

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/ui/IndicatorViewManager;->addToIndicatorView(Landroid/view/View;I)V

    return-void
.end method
