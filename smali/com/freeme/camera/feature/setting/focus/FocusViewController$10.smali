.class Lcom/freeme/camera/feature/setting/focus/FocusViewController$10;
.super Ljava/lang/Object;
.source "FocusViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/FocusViewController;->removeMultiZoneAfView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$10;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$10;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$10;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$10;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->unRegisterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$10;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$10;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$10;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$802(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    :cond_0
    return-void
.end method
