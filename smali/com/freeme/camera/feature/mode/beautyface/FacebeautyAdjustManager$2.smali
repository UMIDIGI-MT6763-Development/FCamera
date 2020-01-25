.class Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->modeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreelayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreelayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$102(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$200(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$400(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$300(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$100(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$102(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreelayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$500(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object v2, v2, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$400(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->access$600(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
