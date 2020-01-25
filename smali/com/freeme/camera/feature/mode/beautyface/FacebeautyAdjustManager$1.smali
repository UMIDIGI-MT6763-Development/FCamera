.class Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;
.super Ljava/lang/Object;
.source "FacebeautyAdjustManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;-><init>(Landroid/view/ViewGroup;Lcom/freeme/camera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$000(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$000(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09010e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    const-string p1, "sunny"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->switcher(I)V

    return-void
.end method
