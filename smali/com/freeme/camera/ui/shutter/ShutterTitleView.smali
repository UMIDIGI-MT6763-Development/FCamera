.class Lcom/freeme/camera/ui/shutter/ShutterTitleView;
.super Landroid/widget/RelativeLayout;
.source "ShutterTitleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;
    }
.end annotation


# instance fields
.field private mMode:Ljava/lang/String;

.field private mModeName:Ljava/lang/String;

.field private mName:Landroid/widget/TextView;

.field private mTextClickedListener:Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;

.field private mTitleIcon:Landroid/widget/ImageView;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/shutter/ShutterTitleView;)Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mTextClickedListener:Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;

    return-object p0
.end method


# virtual methods
.method public getModeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mType:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0901bb

    invoke-virtual {p0, v0}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mName:Landroid/widget/TextView;

    new-instance v1, Lcom/freeme/camera/ui/shutter/ShutterTitleView$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/shutter/ShutterTitleView$1;-><init>(Lcom/freeme/camera/ui/shutter/ShutterTitleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b7

    invoke-virtual {p0, v0}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mTitleIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mMode:Ljava/lang/String;

    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mModeName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnShutterTextClickedListener(Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mTextClickedListener:Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitleIconVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mTitleIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->mType:Ljava/lang/String;

    return-void
.end method
