.class Lcom/freeme/camera/FilmstripView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/FilmstripView;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/FilmstripView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$1;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p1, Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$1;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$MyController;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x40

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_1

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$1;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->goToPreviousItem()Z

    return v1

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$1;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->goToNextItem()Z

    return v1

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$1;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->access$600(Lcom/freeme/camera/FilmstripView$ViewItem;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return v1

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
