.class Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;
.super Ljava/lang/Object;
.source "FocusViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/FocusViewController;->addFocusView()V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v1

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$002(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Lcom/freeme/camera/feature/setting/focus/FocusView;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v1

    const v2, 0x7f090131

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$802(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$900(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0052

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-static {v0, v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$002(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Lcom/freeme/camera/feature/setting/focus/FocusView;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addFocusView] mFocusView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$1000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setPreviewRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$1100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$1200(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$900(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateViewOrientation(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[addFocusView] unknown orientation"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$300(Lcom/freeme/camera/feature/setting/focus/FocusViewController;II)V

    return-void
.end method
