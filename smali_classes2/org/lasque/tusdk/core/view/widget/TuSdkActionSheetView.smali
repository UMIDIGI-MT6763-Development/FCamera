.class public abstract Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract getAlphaAnimType()Lorg/lasque/tusdk/core/type/ActivityAnimType;
.end method

.method public getAnimationListener()Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;

    return-object v0
.end method

.method public abstract getCancelButton()Landroid/widget/Button;
.end method

.method public abstract getMaskBg()Landroid/view/View;
.end method

.method public abstract getSheetTable()Landroid/widget/LinearLayout;
.end method

.method public abstract getTitleView()Landroid/widget/TextView;
.end method

.method public abstract getTransAnimType()Lorg/lasque/tusdk/core/type/ActivityAnimType;
.end method

.method public loadView()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->loadView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->showView(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->showView(Landroid/view/View;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->b:I

    iget p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->b:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->c:Z

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;->onAnimationEnd(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->b:I

    return-void
.end method

.method public runViewShowableAnim(Z)V
    .locals 4

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->c:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getTransAnimType()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getAlphaAnimType()Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->onAnimationEnd(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getSheetTable()Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getAnim(Z)I

    move-result v0

    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getMaskBg()Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, p1}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getAnim(Z)I

    move-result p1

    invoke-static {v2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method public setAnimationListener(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;

    return-void
.end method

.method public setDismissClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getMaskBg()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getMaskBg()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
