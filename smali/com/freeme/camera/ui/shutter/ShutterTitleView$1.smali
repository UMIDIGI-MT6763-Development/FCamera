.class Lcom/freeme/camera/ui/shutter/ShutterTitleView$1;
.super Ljava/lang/Object;
.source "ShutterTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/shutter/ShutterTitleView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/shutter/ShutterTitleView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterTitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView$1;->this$0:Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView$1;->this$0:Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->access$000(Lcom/freeme/camera/ui/shutter/ShutterTitleView;)Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView$1;->this$0:Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    invoke-static {p1}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->access$000(Lcom/freeme/camera/ui/shutter/ShutterTitleView;)Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView$1;->this$0:Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;->onShutterTextClicked(I)V

    :cond_0
    return-void
.end method
