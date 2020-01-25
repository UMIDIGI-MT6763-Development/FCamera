.class Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;
.super Ljava/lang/Object;
.source "ExposureViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;-><init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/exposure/Exposure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

.field final synthetic val$app:Lcom/freeme/camera/common/app/IApp;

.field final synthetic val$exposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Lcom/freeme/camera/feature/setting/exposure/Exposure;Lcom/freeme/camera/common/app/IApp;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->val$exposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->val$app:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->val$exposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$002(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/Exposure;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->val$app:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$102(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$100(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->val$app:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0052

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$100(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$100(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f0900b3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$202(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExposureViewController current EV = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$100(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0900b5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$100(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->val$app:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0048

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$200(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$100(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$402(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Lcom/freeme/camera/feature/setting/exposure/ExposureView;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExposureViewController mExposureView EV = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/Exposure;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->setListener(Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;)V

    return-void
.end method
