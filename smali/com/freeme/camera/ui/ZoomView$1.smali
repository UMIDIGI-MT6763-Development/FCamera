.class Lcom/freeme/camera/ui/ZoomView$1;
.super Ljava/lang/Object;
.source "ZoomView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/ZoomView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/ZoomView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/ZoomView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ZoomView$1;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/freeme/camera/ui/ZoomView$1;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {p1}, Lcom/freeme/camera/ui/ZoomView;->access$400(Lcom/freeme/camera/ui/ZoomView;)I

    move-result p1

    if-ne p1, p5, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/ZoomView$1;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {p1}, Lcom/freeme/camera/ui/ZoomView;->access$300(Lcom/freeme/camera/ui/ZoomView;)I

    move-result p1

    if-eq p1, p4, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/ui/ZoomView$1;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {p1, p4}, Lcom/freeme/camera/ui/ZoomView;->access$302(Lcom/freeme/camera/ui/ZoomView;I)I

    iget-object p1, p0, Lcom/freeme/camera/ui/ZoomView$1;->this$0:Lcom/freeme/camera/ui/ZoomView;

    invoke-static {p1, p5}, Lcom/freeme/camera/ui/ZoomView;->access$402(Lcom/freeme/camera/ui/ZoomView;I)I

    :cond_1
    return-void
.end method
