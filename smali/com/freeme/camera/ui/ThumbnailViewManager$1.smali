.class Lcom/freeme/camera/ui/ThumbnailViewManager$1;
.super Ljava/lang/Object;
.source "ThumbnailViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/ThumbnailViewManager;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/ThumbnailViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$1;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$1;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$000(Lcom/freeme/camera/ui/ThumbnailViewManager;)Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$1;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$000(Lcom/freeme/camera/ui/ThumbnailViewManager;)Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;->onThumbnailClicked()V

    :cond_0
    return-void
.end method
