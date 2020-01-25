.class final Lorg/lasque/tusdk/core/utils/anim/AnimHelper$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->removeViewAnimtor(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$5;->a:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$5;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$5;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$5;->b:Landroid/view/View;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$5;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
