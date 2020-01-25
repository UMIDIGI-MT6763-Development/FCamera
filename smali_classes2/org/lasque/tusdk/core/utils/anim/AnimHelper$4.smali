.class final Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->removeViewAnimtor(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/Animator$AnimatorListener;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;->a:Landroid/animation/Animator$AnimatorListener;

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;->b:Landroid/view/View;

    iput-object p3, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;->c:Landroid/view/ViewGroup$LayoutParams;

    iput p4, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;->d:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;->c:Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;->d:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
