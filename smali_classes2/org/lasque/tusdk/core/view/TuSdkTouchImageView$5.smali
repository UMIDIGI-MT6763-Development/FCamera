.class Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$5;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$5;->b:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$5;->a:Z

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$5;->b:Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView$5;->a:Z

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;->a(Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;Z)V

    return-void
.end method
