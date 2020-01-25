.class Lcom/freeme/camera/ui/FaceBeautyViewManager;
.super Lcom/freeme/camera/ui/AbstractViewManager;
.source "FaceBeautyViewManager.java"


# instance fields
.field private mFaceBeautyLayout:Landroid/widget/RelativeLayout;

.field private mFaceBeautySwitcherClickedListener:Landroid/view/View$OnClickListener;

.field private mFaceBeautySwitcherView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/AbstractViewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/FaceBeautyViewManager;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautySwitcherClickedListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public getFaceBeautyViewLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautyLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautyLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautyLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0900d3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautySwitcherView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautySwitcherView:Landroid/view/View;

    new-instance v1, Lcom/freeme/camera/ui/FaceBeautyViewManager$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/FaceBeautyViewManager$1;-><init>(Lcom/freeme/camera/ui/FaceBeautyViewManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautyLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public setBeautyFaceClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautySwitcherClickedListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/freeme/camera/ui/AbstractViewManager;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautyLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFaceBeautySwitcherViewSelected(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautySwitcherView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public showFaceBeautyView(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautySwitcherView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautySwitcherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautySwitcherView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/FaceBeautyViewManager;->mFaceBeautySwitcherView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
