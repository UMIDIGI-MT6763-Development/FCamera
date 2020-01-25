.class Lcom/freeme/camera/ui/preview/PreviewManager$2;
.super Ljava/lang/Object;
.source "PreviewManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/preview/PreviewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/preview/PreviewManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/preview/PreviewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/PreviewManager$2;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager$2;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->access$500(Lcom/freeme/camera/ui/preview/PreviewManager;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/PreviewManager$2;->this$0:Lcom/freeme/camera/ui/preview/PreviewManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->access$500(Lcom/freeme/camera/ui/preview/PreviewManager;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
