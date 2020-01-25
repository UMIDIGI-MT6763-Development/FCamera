.class Lcom/freeme/camera/ui/FaceBeautyViewManager$1;
.super Ljava/lang/Object;
.source "FaceBeautyViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/FaceBeautyViewManager;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/FaceBeautyViewManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/FaceBeautyViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager$1;->this$0:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager$1;->this$0:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->access$000(Lcom/freeme/camera/ui/FaceBeautyViewManager;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager$1;->this$0:Lcom/freeme/camera/ui/FaceBeautyViewManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/FaceBeautyViewManager;->access$000(Lcom/freeme/camera/ui/FaceBeautyViewManager;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
