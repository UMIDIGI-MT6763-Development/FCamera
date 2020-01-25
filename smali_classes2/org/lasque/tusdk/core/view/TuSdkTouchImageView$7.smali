.class Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$7;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->changeRegionRatio(Landroid/graphics/Rect;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:F

.field final synthetic c:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;Landroid/graphics/Rect;F)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$7;->c:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$7;->a:Landroid/graphics/Rect;

    iput p3, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$7;->b:F

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$7;->c:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$7;->a:Landroid/graphics/Rect;

    iget v1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$7;->b:F

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->onRegionRatioAnimationEnd(Landroid/graphics/Rect;F)V

    return-void
.end method
