.class Lcom/freeme/camera/ui/ReviewUI$1;
.super Ljava/lang/Object;
.source "ReviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/ReviewUI;->showReviewUI(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/ReviewUI;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/ReviewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$100(Lcom/freeme/camera/ui/ReviewUI;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$000(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0b0082

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$200(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->isHasNavigationBar(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v4}, Lcom/freeme/camera/ui/ReviewUI;->access$200(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v4

    invoke-static {}, Lcom/freeme/camera/ui/ReviewUI;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " showReviewUI displayRotation  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_1

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    const v3, 0x7f09017d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/ui/ReviewUI;->access$402(Lcom/freeme/camera/ui/ReviewUI;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$200(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$100(Lcom/freeme/camera/ui/ReviewUI;)Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v3}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$200(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$500(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->playListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/freeme/camera/ui/ReviewUI;->access$602(Lcom/freeme/camera/ui/ReviewUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$600(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v3}, Lcom/freeme/camera/ui/ReviewUI;->access$500(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    move-result-object v3

    iget-object v3, v3, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->playListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$600(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$500(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->saveListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/freeme/camera/ui/ReviewUI;->access$702(Lcom/freeme/camera/ui/ReviewUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$700(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$700(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v3}, Lcom/freeme/camera/ui/ReviewUI;->access$500(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    move-result-object v3

    iget-object v3, v3, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->saveListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$700(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v3, "Done"

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$700(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$500(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->retakeListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09005e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lcom/freeme/camera/ui/ReviewUI;->access$802(Lcom/freeme/camera/ui/ReviewUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$800(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$800(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$500(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    move-result-object v1

    iget-object v1, v1, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->retakeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$900(Lcom/freeme/camera/ui/ReviewUI;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f09017c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/ReviewUI;->access$1002(Lcom/freeme/camera/ui/ReviewUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$1000(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/ReviewUI;->access$900(Lcom/freeme/camera/ui/ReviewUI;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI$1;->this$0:Lcom/freeme/camera/ui/ReviewUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/ReviewUI;->access$1000(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void
.end method
