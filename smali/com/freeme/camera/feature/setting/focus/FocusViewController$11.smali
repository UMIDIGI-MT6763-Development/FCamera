.class Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;
.super Ljava/lang/Object;
.source "FocusViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/FocusViewController;->onPreviewChanged(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

.field final synthetic val$previewRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->val$previewRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->val$previewRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$1002(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->val$previewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setPreviewRect(Landroid/graphics/RectF;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->val$previewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;->val$previewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->setPreviewSize(II)V

    :cond_1
    return-void
.end method
