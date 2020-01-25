.class final Lorg/lasque/tusdk/core/utils/anim/AnimHelper$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->rotateAnimation(Landroid/view/View;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;I)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$2;->a:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$2;->a:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    return-void
.end method
